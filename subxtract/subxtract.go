package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"log"
	"os"
	"sync"

	"github.com/fatih/color"
	"github.com/elliotwutingfeng/go-fasttld"
	"github.com/spf13/cobra"
)

var (
	concurrencyLimit     int    
	inputFile            string
	includePrivateSuffix bool
	ignoreSubDomains     bool
	outputJSON           bool
	printDomains         bool
	printRootsOnly       bool
	printTLDOnly         bool
	toPunyCode           bool
)

var rootCmd = &cobra.Command{
	Use:   "subxtract",
	Short: "Public-Suffix based TLDs (Top-Level-Domains) & Root Domain Extractor",
	Long:  "Public-Suffix based TLDs (Top-Level-Domains) & Root Domain Extractor",
	Args:  cobra.MaximumNArgs(10),
	Run: func(cmd *cobra.Command, args []string) {
		var urls []string
		if inputFile != "" {
			file, err := os.Open(inputFile)
			if err != nil {
				log.Fatal(err)
			}
			defer file.Close()

			scanner := bufio.NewScanner(file)
			for scanner.Scan() {
				urls = append(urls, scanner.Text())
			}

			if err := scanner.Err(); err != nil {
				log.Fatal(err)
			}
		} else if len(args) > 0 {
			urls = append(urls, args[0])
		} else {
			scanner := bufio.NewScanner(os.Stdin)
			for scanner.Scan() {
				urls = append(urls, scanner.Text())
			}

			if err := scanner.Err(); err != nil {
				log.Fatal(err)
			}
		}

		extractor, err := fasttld.New(fasttld.SuffixListParams{IncludePrivateSuffix: includePrivateSuffix})
		if err != nil {
			log.Fatal(err)
		}

        //Queue Workers & Jobs
		var wg sync.WaitGroup
		queue := make(chan string)
		wg.Add(concurrencyLimit)

		// Worker function to process URLs
		worker := func() {
			defer wg.Done()
			for url := range queue {
				res, err := extractor.Extract(fasttld.URLParams{URL: url, IgnoreSubDomains: ignoreSubDomains, ConvertURLToPunyCode: toPunyCode})
				if err != nil {
					color.New(color.FgHiRed, color.Bold).Print("Error: ")
					color.New(color.FgHiWhite).Println(err)
					continue
				}

				if !printDomains && !printRootsOnly && !printTLDOnly {
					if outputJSON {
                        // Map to hold the JSON output
						jsonOutput := map[string]interface{}{
							"url":              url,
							"scheme":           res.Scheme,
							"userinfo":         res.UserInfo,
							"subdomain":        res.SubDomain,
							"domain":           res.Domain,
							"suffix":           res.Suffix,
							"registered_domain": res.RegisteredDomain,
							"port":             res.Port,
							"path":             res.Path,
						}

                        // Map to hold the string representations of HostType
						hostTypeMap := map[fasttld.HostType]string{
							0: "Unknown",
							1: "Hostname",
							2: "IPv4",
							3: "IPv6",
						}

                        // Convert HostType to string representation for JSON output
						hostTypeStr := hostTypeMap[res.HostType]
						jsonOutput["host_type"] = hostTypeStr

                        // Marshal JSON and print
						jsonData, err := json.MarshalIndent(jsonOutput, "", " ")
						if err != nil {
							log.Fatal(err)
						}
						fmt.Println(string(jsonData))
					} else {
						fasttld.PrintRes(url, res)
					}
				} else if printRootsOnly {
					fmt.Println(res.Domain)
				} else if printDomains {
					fmt.Println(res.Domain + "." + res.Suffix)
				} else if printTLDOnly {
					fmt.Println("." + res.Suffix)
				}
			}
		}

		// Start worker goroutines
		for i := 0; i < concurrencyLimit; i++ {
			go worker()
		}

		// Enqueue URLs
		for _, url := range urls {
			queue <- url
		}

		close(queue)
		wg.Wait()
	},
}

func init() {
	rootCmd.Flags().IntVarP(&concurrencyLimit, "concurrency", "c", 1000, "Limit the number of concurrent goroutines (Higher CPU/RAM Usage)")
	rootCmd.Flags().BoolVarP(&printDomains, "domains", "d", false, "Print the root domain and suffix combined")
	rootCmd.Flags().StringVarP(&inputFile, "file", "f", "", "Input file containing URLs|Domains (one per line)")
	rootCmd.Flags().BoolVarP(&ignoreSubDomains, "ignore-subdomains", "i", false, "Ignore (Exclude) subdomains")
	rootCmd.Flags().BoolVarP(&outputJSON, "json", "j", false, "Output in JSON Format (Everything)")
	rootCmd.Flags().BoolVarP(&includePrivateSuffix, "private-suffix", "s", false, "Include Private Suffix (Example: blogspot.com)")
	rootCmd.Flags().BoolVarP(&toPunyCode, "punycode", "p", false, "Convert Internationalized Domain Names (IDN) to Punycode (ASCII Characters)")
	rootCmd.Flags().BoolVarP(&printRootsOnly, "roots", "r", false, "Print only the root domain (without suffix)")
	rootCmd.Flags().BoolVarP(&printTLDOnly, "tlds", "t", false, "Print only the Top Level Domain (TLD)")
}

func main() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
