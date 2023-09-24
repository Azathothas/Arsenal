package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"sync"
)

var threads int
var method string
var link string
var code int
var cont bool

func main() {
	var wg sync.WaitGroup
	var channel = make(chan int)
	var times int
	flag.StringVar(&method, "X", "HEAD", "method")
	flag.IntVar(&threads, "t", 10, "threads")
	flag.IntVar(&times, "a", 500, "times")
	flag.BoolVar(&cont, "s", false, "continue after the code changing")
	flag.StringVar(&link, "u", "", "url")
	flag.Parse()

	if link == "" {
		fmt.Println("URL was not provided")
		return
	}

	req, _ := http.NewRequest(method, link, nil) //,nil
	req.Header.Add("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36")
	resp, err := (*http.Client).Do(&http.Client{}, req)
	if err == nil {
		code = resp.StatusCode
	} else {
		fmt.Println(err.Error())
	}

	for t := 0; t < threads; t++ {
		go func() {
			for {
				i := <-channel
				wg.Add(1)
				request(i)
				wg.Done()
			}
		}()
	}
	for i := 0; i < times; i++ {
		channel <- i
	}
	wg.Wait()
}

func request(i int) {
	client := &http.Client{}
	req, _ := http.NewRequest(method, link, nil)
	req.Header.Add("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36")
	resp, err := client.Do(req)
	if err != nil {
		println(err.Error())
		return
	}
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		println(err.Error())
	}
	resp.Body.Close()

	fmt.Println(i, resp.StatusCode, len(body))
	if code != resp.StatusCode && !cont {
		os.Exit(5)
	}
}
