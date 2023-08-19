package main

import (
	"bufio"
	"flag"
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

func main() {
	filePath := flag.String("t", "", "path to file containing domain list")
	inScope := flag.Bool("in", false, "generate in-scope domains")
	wildScope := flag.Bool("wl", false, "generate wildcard in-scope domains")	
	outScope := flag.Bool("os", false, "generate out-of-scope domains")

	flag.Usage = func() {
		fmt.Printf("Usage: %s [OPTIONS]\n\n", os.Args[0])
		fmt.Println("Options:")
		flag.VisitAll(func(f *flag.Flag) {
			fmt.Printf("  -%-12s %s\n", f.Name, f.Usage)
		})
		fmt.Printf("\nExamples:\n")
		fmt.Printf("  %s -t domains.txt -in           # Generate in-scope domains \n", os.Args[0])
		fmt.Printf("  %s -t domains.txt -wl           # Generate wildcard in-scope domains\n", os.Args[0])		
		fmt.Printf("  %s -t domains.txt -os           # Generate wildcard out-of-scope domains\n", os.Args[0])
	}

	flag.Parse()
	if !(*inScope || *wildScope || *outScope) {
		fmt.Println("Please specify either -in, -wl, or -os")
		os.Exit(1)
	}

	var input []byte
	var err error
	if *filePath == "" {
		input, err = ioutil.ReadAll(os.Stdin)
		if err != nil {
			fmt.Printf("Error reading from stdin: %v\n", err)
			os.Exit(1)
		}
	} else {
		input, err = ioutil.ReadFile(*filePath)
		if err != nil {
			fmt.Printf("Error reading file %s: %v\n", *filePath, err)
			os.Exit(1)
		}
	}

	var output []string
	scanner := bufio.NewScanner(strings.NewReader(string(input)))
	for scanner.Scan() {
		domain := strings.TrimSpace(scanner.Text()) // Trim spaces from each line
		if *inScope {
			output = append(output, fmt.Sprintf(".*\\.%s$", strings.ReplaceAll(domain, ".", "\\.")))
		} else if *outScope {
			output = append(output, fmt.Sprintf("!.*%s$", strings.ReplaceAll(domain, ".", "\\.")))
		} else if *wildScope {
			rootDomain := strings.Split(domain, ".")[0]
			if !strings.ContainsAny(rootDomain, ".") {
				output = append(output, fmt.Sprintf(".*%s.*", strings.ReplaceAll(rootDomain, ".", "\\.")))
			}
		}
	}

	if err := scanner.Err(); err != nil {
		fmt.Printf("Error reading input: %v\n", err)
		os.Exit(1)
	}

	// Remove duplicates
	output = removeDuplicates(output)

	fmt.Println(strings.Join(output, "\n"))
}

// Helper function to remove duplicates from a string slice
func removeDuplicates(slice []string) []string {
	seen := make(map[string]bool)
	j := 0
	for _, val := range slice {
		if seen[val] {
			continue
		}
		seen[val] = true
		slice[j] = val
		j++
	}
	return slice[:j]
}
