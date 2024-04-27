// Original/Refs:
// https://github.com/CaliDog/certstream-go/issues/10
// Alt : https://github.com/pathtofile/certstream-go/blob/master/certstream.go
//     : https://github.com/existagon/certstream-go-custom-url/blob/master/certstream.go

package main

//import required packages
import (
	"crypto/tls"
	"flag"
	"fmt"
	"net/http"
	"os"
	"os/signal"
	"strings"
	"syscall"
	"time"

	"github.com/gorilla/websocket"
	"github.com/jmoiron/jsonq"
	"github.com/pkg/errors"
)

// Define ping (Heartbeat Interval)
const (
	pingPeriod time.Duration = 15 * time.Second
)

// Define -quiet globally
var quiet bool

// Define -insecure globally
var insecure bool

// Define -output globally
var outputFile string

// Establish a connection to WebSocket Server
func CertStreamEventStream(skipHeartbeats bool, url string) (chan jsonq.JsonQuery, chan error) {
	// Channels for Certstream events and errors
	outputStream := make(chan jsonq.JsonQuery)
	errStream := make(chan error)

	// Goroutine for continuous operation
	go func() {
		for {
			// Attempt to establish a WebSocket connection with SSL/TLS support
			c, _, err := connectWebSocket(url)

			// Try reconnecting upon server failures
			if err != nil {
				errStream <- errors.Wrap(err, "Error connecting to Server! Sleeping a few seconds and reconnecting... ")
				time.Sleep(5 * time.Second)
				continue
			}

			// Close the WebSocket connection and channels when the function exits
			defer c.Close()
			defer close(outputStream)

			// Channel for handling the periodic sending of Ping messages
			done := make(chan struct{})

			// Goroutine for sending Ping messages at regular intervals
			go func() {
				ticker := time.NewTicker(pingPeriod)
				defer ticker.Stop()

				for {
					select {
					case <-ticker.C:
						c.WriteMessage(websocket.PingMessage, nil)
					case <-done:
						return
					}
				}
			}()

			// Loop for reading Certstream events and  sending them to the outputStream channel
			for {
				var v interface{}
				c.SetReadDeadline(time.Now().Add(15 * time.Second))
				err = c.ReadJSON(&v)
				// Handle errors related to reading and decoding JSON frames
				if err != nil {
					errStream <- errors.Wrap(err, "Error decoding json frame!")
					c.Close()
					break
				}

				// JSON Query
				jq := jsonq.NewQuery(v)

				// Extract the "message_type" field from the Certstream event
				res, err := jq.String("message_type")
				if err != nil {
					errStream <- errors.Wrap(err, "Could not create jq object. Malformed json input received. Skipping.")
					continue
				}
				// Skip heartbeat messages if the flag is set
				if skipHeartbeats && res == "heartbeat" {
					continue
				}
				// Send the Certstream event to the outputStream channel
				outputStream <- *jq
			}
			// Close the done channel when the loop exits
			close(done)
		}
	}()
	// Return channels for Certstream events and errors
	return outputStream, errStream
}

// Connect to WebSocket with SSL/TLS support
func connectWebSocket(url string) (*websocket.Conn, *http.Response, error) {
	dialer := websocket.DefaultDialer

	// Allow SSL connections with insecure option
	if insecure {
		dialer.TLSClientConfig = &tls.Config{InsecureSkipVerify: true}
	}

	c, resp, err := dialer.Dial(url, nil)
	return c, resp, err
}

// cli funcs
func main() {
	//vars for flags
	var url string
	var extractDomains bool
	var skipHeartbeats bool

	//flags for the cli
	flag.StringVar(&url, "url", "", "Certstream Server WebSocket URL (ws:// | wss://)")
	flag.BoolVar(&extractDomains, "domains-only", false, "Extract and Print only Domains from Certstream Output")
	flag.BoolVar(&quiet, "quiet", false, "Suppress Standard Error Output (Useful for Automation)")
	flag.BoolVar(&skipHeartbeats, "skip-heartbeats", false, "Skip Sending Heartbeat (Ping) Messages to Certstream Server")
	flag.BoolVar(&insecure, "insecure", false, "Allow Invalid/Insecure SSL Connections")
	flag.StringVar(&outputFile, "output", "", "Output file path to write the output (default: stdout)")
	flag.Parse()

	//sanity check for -url
	if url == "" {
		fmt.Println("Error: Please provide a Certstream WebSocket URL (ws:// | wss:// ) using the -url flag.")
		fmt.Println("Example: -url wss://certstream.calidog.io")
		os.Exit(1)
	}

	// Open the output file if specified, otherwise use stdout
	var outFile *os.File
	if outputFile != "" {
		var err error
		outFile, err = os.Create(outputFile)
		if err != nil {
			fmt.Printf("Error creating output file %s: %v\n", outputFile, err)
			os.Exit(1)
		}
		defer outFile.Close()
	} else {
		outFile = os.Stdout
	}

	//output
	outputStream, errStream := CertStreamEventStream(skipHeartbeats, url)

	// Handle signals for clean shutdown
	signalChan := make(chan os.Signal, 1)
	signal.Notify(signalChan, syscall.SIGINT, syscall.SIGTERM)
	// Exit gracefully
	go func() {
		sig := <-signalChan
		fmt.Printf("Received signal %v. Exiting...\n", sig)
		close(outputStream)
		os.Exit(0)
	}()
	// Errors & logs
	for {
		select {
		case jq, ok := <-outputStream:
			if !ok {
				fmt.Fprintln(outFile, "Output stream closed. Exiting...")
				os.Exit(0)
			}
			if extractDomains {
				printDomains(jq, outFile)
			} else {
				// Handle Certstream events as needed
				fmt.Fprintln(outFile, "Received Certstream event:", jq)
			}
		case err := <-errStream:
			if !quiet {
				fmt.Fprintln(os.Stderr, "Stream error", err)
			}
		}
	}
}

// func for -domains
func printDomains(jq jsonq.JsonQuery, outFile *os.File) {
	domains, err := jq.ArrayOfStrings("data", "leaf_cert", "all_domains")
	if err != nil {
		if !quiet {
			fmt.Fprintln(os.Stderr, "Error decoding json", err)
		}
	} else {
		for _, domain := range domains {
			// Removes Wildcards(.*) with empties (""), but only for the first occurrence in a line (1)
			fmt.Fprintln(outFile, strings.Replace(domain, "*.", "", 1))
		}
	}
}
