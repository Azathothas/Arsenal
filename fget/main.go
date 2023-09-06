package main

// imports
import (
	"bufio"
	"crypto/tls"
	"errors"
	"fmt"
	"io/ioutil"
	"math/rand"
	"net"
	"net/http"
	"net/url"
	"os"
	"path"
	"strings"
	"sync"
	"time"

	flag "github.com/spf13/pflag"
)

const (
	qsize = 20
)

type ln struct {
	filename 	string
	url      	string
	host		string
}

var (
	workersArg	      int
	timeOutArg		  int
	headerArg         []string
	urlArg            string
	statusListArg     string
	proxyArg          string
	fingerPrintArg    string
	outputFileArg     string
	queryArg          string
	verboseArg        bool
	followRedirectArg bool
	useRandomAgentArg bool
	testHTTPArg       bool
	allInArg		  bool
	useUniqueName	  bool
)

func newClient() *http.Client {
	tr := &http.Transport{
		MaxIdleConns:    30,
		IdleConnTimeout: time.Second,
		TLSClientConfig: &tls.Config{InsecureSkipVerify: true},
		DialContext: (&net.Dialer{
			Timeout: time.Second * time.Duration(timeOutArg),
		}).DialContext,
	}

	if proxyArg != "" {
		if p, err := url.Parse(proxyArg); err == nil {
			tr.Proxy = http.ProxyURL(p)
		}
	}

	client := &http.Client{
		Transport: tr,
		Timeout:   time.Second * time.Duration(timeOutArg),
	}

	if !followRedirectArg {
		client.CheckRedirect = func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		}
	}

	return client
}


func main() {

	flag.StringArrayVarP(&headerArg, "header", "H", nil, "Add custom Headers to the request")
	flag.StringVarP(&urlArg, "url", "u", "", "The url to check")
	flag.StringVarP(&outputFileArg, "output", "o", "", "Save to folder. Default: create results folder which will include a folder for each target")
	flag.IntVarP(&workersArg, "workers", "w", 20, "Number of workers")
	flag.BoolVarP(&verboseArg, "verbose", "v", false, "Display extra info about what is going on")
	flag.BoolVarP(&followRedirectArg, "follow-redirect", "f", false, "Follow redirects (Default: false)")
	flag.StringVarP(&proxyArg, "proxy", "p", "", "Add a HTTP proxy")	
	flag.BoolVarP(&useRandomAgentArg, "random-agent", "r", false, "Set a random User Agent")
	flag.BoolVarP(&allInArg, "no-folders", "", false, "Don't store results on separate folders")
	flag.BoolVarP(&useUniqueName, "unique", "", false, "Use a unique name for each file")
	flag.IntVarP(&timeOutArg, "timeout", "t", 20, "connection timeout")
	
	flag.Parse()

	if workersArg > 100 {
		workersArg = 100
	}

	client := newClient()

	var links []string

	if len(urlArg) > 0 {
		links = append(links, urlArg)
	} else {
		s := bufio.NewScanner(os.Stdin)
		for s.Scan() {
			links = append(links, s.Text())
		}
	}

	var wg sync.WaitGroup
	
	queue := make(chan ln, qsize)

	for i := 0; i < workersArg; i++ {
		wg.Add(1)
		go worker(i+1, queue, &wg, client)
	}

	for _, link := range links {
		
		u, err := url.ParseRequestURI(link)
		if err != nil {
			if(verboseArg){
				fmt.Printf("[-] Invalid url: %s\n", link)
			}
		}

		_, fileName := path.Split(u.Path)

		link0:=ln{filename: fileName, url: link, host: u.Host}
		
		queue <- link0
	}

	close(queue)
	wg.Wait()
}

func worker(index int, queue <-chan ln, wg *sync.WaitGroup, client *http.Client) {
	
	defer wg.Done()
	for link := range queue {
		if(verboseArg){
			fmt.Printf("[+] Worker %d, downloading %s\n", index, link.url)
		}
		bytes, err := fetch(link.url, client)

		if err != nil {
			if(verboseArg){
				fmt.Println(err)
			}
			continue
		}

		var errWrite error
		var fullPath string
		
		if(useUniqueName){
			//use unique name
			host, _:=url.Parse(link.url)

			cleanhost:= strings.Replace(host.Host, ".", "_", -1)

			link.filename = cleanhost + "_" + link.filename
		}

		if(!allInArg){
			if(outputFileArg != ""){
				fullPath = path.Join(outputFileArg, "results")
			}else{
				fullPath = "results"
			}
			
			//creating results folder
			if _, errResults := os.Stat(fullPath); os.IsNotExist(errResults) {
				os.MkdirAll(fullPath, 0755)
			}

			fullPath=path.Join(fullPath, link.host)

			//creating a folder for each domain
			if _, errFolder := os.Stat(fullPath); os.IsNotExist(errFolder) {
				os.Mkdir(fullPath, 0755)
			}
			
			fullPath=path.Join(fullPath, link.filename)

		}else{
			if(outputFileArg != ""){
				fullPath = outputFileArg
				os.Mkdir(fullPath, 0755)
			}
			
			fullPath = path.Join(fullPath, link.filename)
		}
	
		// lets write the file!
		errWrite = ioutil.WriteFile(fullPath, bytes, 0644)
		
		if errWrite != nil {
			if(verboseArg){
				fmt.Printf("[-] Write error: %v\n", errWrite)
			}
		} else {
			if(verboseArg){
				fmt.Printf("[+] file OK: %v, size: %v\n", link.filename, len(bytes))
			}
		}	
	}
}

// Fetch function
func fetch(url string, client *http.Client) ([]byte, error) {
	
	//resp, err := http.Get(url)

	req, err := http.NewRequest("GET", url, nil)

	if err != nil {
		if verboseArg {
			fmt.Printf("[-] Error: %v\n", err)
		}
		return nil, errors.New("[-] Failed to fetch " + url)
	}

	if useRandomAgentArg {
		req.Header.Set("User-Agent", getUserAgent())
	} else {
		req.Header.Set("User-Agent", "Mozilla/5.0 (compatible; fget/1.0)")
	}

	// add headers to the request
	for _, h := range headerArg {
		parts := strings.SplitN(h, ":", 2)

		if len(parts) != 2 {
			continue
		}
		req.Header.Set(parts[0], parts[1])
	}

	// send the request
	resp, err := client.Do(req)
	if err != nil {
		if (verboseArg) {
			fmt.Printf("[-] Error: %v\n", err)
		}
		return nil, errors.New("[-] Failed to parse " + url)
	}
	defer resp.Body.Close()

	
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		if(verboseArg){
			fmt.Printf("[-] Error: %v\n", err)			
		}
		return nil, errors.New("[-] Failed to parse " + url)
	}
	return body, nil
}

func getUserAgent() string {
	payload := []string{
		"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36",
		"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36",
		"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/117.0",
		"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0",
		"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15",
	}

	rand.Seed(time.Now().UnixNano())
	randomIndex := rand.Intn(len(payload))

	pick := payload[randomIndex]

	return pick
}
