package main

import (
	"bytes"
	"flag"
	"fmt"
	"io/ioutil"
	"os"
	"strings"
	"github.com/dustin/go-humanize"
)

func main() {
	var lines int
	var inputFile string
	var outputFile string
	var print bool
	var quiet bool

	// flags
	flag.IntVar(&lines, "l", 0, "Number (n) of lines to cut")
	flag.IntVar(&lines, "lines", 0, "Number (n) of lines to cut")
	flag.StringVar(&inputFile, "f", "", "Input file to cut lines from")
	flag.StringVar(&inputFile, "file", "", "Input file to cut lines from")
	flag.StringVar(&outputFile, "o", "", "Output file to paste cut lines")
	flag.StringVar(&outputFile, "output", "", "Output file to paste cut lines")
	flag.BoolVar(&print, "p", false, "Print the lines that are cut to stdout")
	flag.BoolVar(&print, "print", false, "Print the lines that are cut to stdout")
	flag.BoolVar(&quiet, "q", false, "Quiet mode (Suppress Info & Stats)")
	flag.BoolVar(&quiet, "quiet", false, "Quiet mode (Suppress Info & Stats)")
    
	// --help
	flag.Usage = func() {
		fmt.Fprintf(flag.CommandLine.Output(), "Usage of %s:\n", os.Args[0])
		fmt.Println("  -l, --lines int")
		fmt.Println("\tNumber (n) of lines to cut")
		fmt.Println("  -f, --file string")
		fmt.Println("\tInput file to cut lines from")
		fmt.Println("  -o, --output string")
		fmt.Println("\tOutput file to paste cut lines")
		fmt.Println("  -p, --print")
		fmt.Println("\tPrint the lines that are cut to stdout")
		fmt.Println("  -q, --quiet")
		fmt.Println("\tQuiet mode (Suppress Info & Stats)")
	}

	flag.Parse()

	if lines <= 0 {
		fmt.Println("Number of lines must be greater than 0")
		os.Exit(1)
	}

	if inputFile == "" || outputFile == "" {
		fmt.Println("Input and output files must be specified")
		os.Exit(1)
	}

	// Read input file
	inputData, err := ioutil.ReadFile(inputFile)
	if err != nil {
		fmt.Printf("Error reading input file: %v\n", err)
		os.Exit(1)
	}

	// Split input data by lines
	linesData := strings.Split(string(inputData), "\n")

	// Ensure lines to cut is not greater than total lines in the file
	if lines > len(linesData) {
		if !quiet {
		fmt.Println("Number of lines to cut is greater than total lines in the file, cutting all lines instead.")
		}
		lines = len(linesData)
	}

	// Extract lines to cut
	cutLines := linesData[:lines]

	// Update input data to remove cut lines
	inputData = []byte(strings.Join(linesData[lines:], "\n"))

	// Write updated input data back to input file
	err = ioutil.WriteFile(inputFile, inputData, 0644)
	if err != nil {
		fmt.Printf("Error writing to input file: %v\n", err)
		os.Exit(1)
	}

	// Append cut lines to output file
	outputFilePtr, err := os.OpenFile(outputFile, os.O_APPEND|os.O_WRONLY|os.O_CREATE, 0644)
	if err != nil {
		fmt.Printf("Error opening output file: %v\n", err)
		os.Exit(1)
	}
	defer outputFilePtr.Close()
	for _, line := range cutLines {
		_, err := fmt.Fprintln(outputFilePtr, line)
		if err != nil {
			fmt.Printf("Error writing to output file: %v\n", err)
			os.Exit(1)
		}
		if print { // Print cut lines to stdout if the print flag is set
			fmt.Println(line)
		}
	}

    // Close the output file after writing and printing lines
    if err := outputFilePtr.Close(); err != nil {
        fmt.Printf("Error closing output file: %v\n", err)
        os.Exit(1)
    }

	// Count total lines in output file
	totalLines, err := countLines(outputFile)
	if err != nil {
		fmt.Printf("Error counting lines in output file: %v\n", err)
		os.Exit(1)
	}

	// Get file sizes
	inputSize, err := getFileSize(inputFile)
	if err != nil {
		fmt.Printf("Error getting input file size: %v\n", err)
		os.Exit(1)
	}
	outputSize, err := getFileSize(outputFile)
	if err != nil {
		fmt.Printf("Error getting output file size: %v\n", err)
		os.Exit(1)
	}

	// Print Stats
	if !quiet {
		fmt.Printf("(%d) Lines cut from %s (%s) and appended to %s (%s) (%d)\n", lines, inputFile, humanize.Bytes(uint64(inputSize)), outputFile, humanize.Bytes(uint64(outputSize)), totalLines)
	}
}

// Function to count lines in a file
func countLines(filename string) (int, error) {
	file, err := os.Open(filename)
	if err != nil {
		return 0, err
	}
	defer file.Close()
	count := 0
	buf := make([]byte, 1024)
	lineSep := []byte{'\n'}
	for {
		c, err := file.Read(buf)
		if err != nil && c == 0 {
			break
		}

		count += bytes.Count(buf[:c], lineSep)
	}
	return count, nil
}

// Function to get file size
func getFileSize(filename string) (int64, error) {
	fileInfo, err := os.Stat(filename)
	if err != nil {
		return 0, err
	}
	return fileInfo.Size(), nil
}
