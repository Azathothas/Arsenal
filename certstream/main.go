package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"

	"github.com/CaliDog/certstream-go"
)

func main() {
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	// The false flag specifies that we want heartbeat messages.
	// Default timeout is ~ 30-60 Seconds
	stream, errStream := certstream.CertStreamEventStream(false)
	for {
		select {
		// Use JQ, to parse only Domains
		case jq := <-stream:
			// Same as: certstream --full --json | jq -r '.data.leaf_cert.all_domains[]'
			domains, err := jq.ArrayOfStrings("data", "leaf_cert", "all_domains")
			if err != nil {
				fmt.Fprintln(os.Stderr, "Error decoding json", err)
			} else {
				for _, domain := range domains {
					// Removes Wildcards(.*) with empties (""), but only for the first occurrence in a line (1)
					fmt.Fprintln(w, strings.Replace(domain, "*.", "", 1))
				}
			}
		case err := <-errStream:
			// Uncomment, if std errors are to be printed as std out
			// fmt.Fprintln(os.Stderr, "Stream error", err)
			// For now, Suppress All Std Errors
			func(err error) {
				_ = err
			}(err)
		}
	}
}
