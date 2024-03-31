package main

import (
	"bytes"
	"flag"
	"fmt"
	"io"
	"os"
	"strings"
)

//Help
func customUsage() {
    fmt.Fprintf(os.Stderr, "Usage of %s:\n", os.Args[0])
    fmt.Fprintf(os.Stderr, "  -s | --single\tEscape single quotes\n")
    fmt.Fprintf(os.Stderr, "  -d | --double\tEscape double quotes\n")
    fmt.Fprintf(os.Stderr, "  -f | --file\tFile path to read input from\n")
    fmt.Fprintf(os.Stderr, "\nExamples: \n")	
    fmt.Fprintf(os.Stderr, " Input: quotes-escaper {OPTS} {INPUT} [Example: quotes-escaper -d 'Double \" Quote']\n")
    fmt.Fprintf(os.Stderr, " STDIN: {Cat somefile OR echo someinput} | quotes-escaper {OPTS}\n")
    fmt.Fprintf(os.Stderr, "  FILE: quotes-escaper -f \"/path/to/somefile\" {OPTS}\n\n")
}

//Sanity Checks
func isatty(f *os.File) bool {
	fi, err := f.Stat()
	if err != nil {
		return false
	}
	return fi.Mode()&os.ModeCharDevice != 0
}

//Main
func main() {
	singleQuote := flag.Bool("single", false, "Escape single quotes")
	doubleQuote := flag.Bool("double", false, "Escape double quotes")
	fileName := flag.String("file", "", "File path to read input from")
	flag.BoolVar(singleQuote, "s", false, "")
	flag.BoolVar(doubleQuote, "d", false, "")
	flag.StringVar(fileName, "f", "", "")
	flag.Usage = customUsage
	flag.Parse()

	var input string
	if *fileName != "" {
		// Read input from the specified file
		content, err := os.ReadFile(*fileName)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error reading file: %v\n", err)
			os.Exit(1)
		}
		input = string(content)
	} else if !isatty(os.Stdin) {
		// Read input from stdin
		buf := new(bytes.Buffer)
		_, err := io.Copy(buf, os.Stdin)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error reading from stdin: %v\n", err)
			os.Exit(1)
		}
		input = buf.String()
	} else {
		// Read input from positional arguments
		input = strings.Join(flag.Args(), " ")
	}

	output := escapeQuotes(input, *singleQuote, *doubleQuote)
	fmt.Println(output)
}

//Escapers
func escapeQuotes(input string, escapeSingle, escapeDouble bool) string {
	var b strings.Builder
	for _, r := range input {
		switch r {
		case '\'':
			if escapeSingle {
				b.WriteString("\\'")
			} else {
				b.WriteRune(r)
			}
		case '"':
			if escapeDouble {
				b.WriteString("\\\"")
			} else {
				b.WriteRune(r)
			}
		default:
			b.WriteRune(r)
		}
	}
	return b.String()
}
//END
