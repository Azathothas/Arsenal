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
    includePrivateSuffix bool
    ignoreSubDomains     bool
    toPunyCode           bool
    outputJSON           bool
    printRootsOnly       bool
    printDomains         bool
    inputFile            string
)

var rootCmd = &cobra.Command{
    Use:     "subxtract",
    Short:   "Public-Suffix based TLDs (Top-Level-Domains) & Root Domain Extractor",
    Long:    "Public-Suffix based TLDs (Top-Level-Domains) & Root Domain Extractor",
    Args:    cobra.MaximumNArgs(1),
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

        var wg sync.WaitGroup
        var mu sync.Mutex

        for _, url := range urls {
            wg.Add(1)
            go func(url string) {
                defer wg.Done()
                res, err := extractor.Extract(fasttld.URLParams{URL: url, IgnoreSubDomains: ignoreSubDomains, ConvertURLToPunyCode: toPunyCode})
                if err != nil {
                    mu.Lock()
                    defer mu.Unlock()
                    color.New(color.FgHiRed, color.Bold).Print("Error: ")
                    color.New(color.FgHiWhite).Println(err)
                    return
                }

                mu.Lock()
                defer mu.Unlock()
                if !printRootsOnly && !printDomains {
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
                }
            }(url)
        }
        wg.Wait()
    },
}

func init() {
    rootCmd.Flags().BoolVarP(&includePrivateSuffix, "private-suffix", "p", false, "Include Private Suffix (Example: blogspot.com)")
    rootCmd.Flags().BoolVarP(&ignoreSubDomains, "ignore-subdomains", "i", false, "Ignore (Exclude) subdomains")
    rootCmd.Flags().BoolVarP(&toPunyCode, "to-punycode", "t", false, "Convert Internationalized Domain Names (IDN) to Punycode (ASCII Characters)")
    rootCmd.Flags().BoolVarP(&outputJSON, "json", "j", false, "Output in JSON Format (Everything)")
    rootCmd.Flags().BoolVarP(&printRootsOnly, "roots", "r", false, "Print only the root domain (without suffix)")
    rootCmd.Flags().BoolVarP(&printDomains, "domains", "d", false, "Print the root domain and suffix combined")
    rootCmd.Flags().StringVarP(&inputFile, "file", "f", "", "Input file containing URLs|Domains (one per line)")
}

func main() {
    if err := rootCmd.Execute(); err != nil {
        fmt.Println(err)
        os.Exit(1)
    }
}