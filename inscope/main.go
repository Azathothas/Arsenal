//Entry point
package main

// Import necessary packages for the program.
import (
    "bufio"         // Package bufio implements buffered I/O.
    "errors"        // Package errors implements functions to manipulate errors.
    "flag"          // Package flag implements command-line flag parsing.
    "fmt"           // Package fmt implements formatted I/O with functions analogous to C's printf and scanf.
    "io"            // Package io provides basic interfaces to I/O primitives.
    "net/url"       // Package url implements parsing of URLs and implements query escaping.
    "os"            // Package os provides a platform-independent interface to operating system functionality.
    "path/filepath" // Package filepath implements utility routines for manipulating filename paths.
    "regexp"        // Package regexp implements regular expression search.
    "runtime"       // Package runtime contains operations that interact with Go's runtime system
    "strings"       // Package strings implements simple functions to manipulate UTF-8 encoded strings.
    "sync"          // Package sync provides basic synchronization primitives such as mutual exclusion locks.
)

// Define a struct for scope checking
type scopeChecker struct {
    patterns     []*regexp.Regexp
    antipatterns []*regexp.Regexp
}

// Define global variables
var scopeFile string
var inverse bool
var numThreads int

// Initialization function
func init() {
    // Customize usage message
    flag.Usage = func() {
        h := []string{
            "Filters in scope and out of scope urls from stdin.",
            "Requires you have .scope in CWD or Parent or passed via -s | --scope <file>",
            "To generate one: https://github.com/Azathothas/Arsenal/tree/main/scopegen",
            "For a Bash Alternative: https://github.com/Azathothas/Arsenal/tree/main/scopeview",
            "",
            "Options:",
            " <no options> look for .scope file and filter input (STDIN)",
            " -v, --inverse Prints out of scope items (default: false)",
            " -s, --scope <file> Path to scopefile (default: looks for .scope)",
            " -t, --threads <number> Number of worker threads (default: 8)",
            "",
        }
        fmt.Fprintf(os.Stderr, strings.Join(h, "\n"))
    }
}

// Check if a domain is in scope
func (s *scopeChecker) inScope(domain string) bool {
    // if it's a URL pull the hostname out to avoid matching
    // on part of the path or something like that
    if isURL(domain) {
        var err error
        domain, err = getHostname(domain)
        if err != nil {
            return false
        }
    }

    inScope := false
    for _, p := range s.patterns {
        if p.MatchString(domain) {
            inScope = true
            break
        }
    }

    for _, p := range s.antipatterns {
        if p.MatchString(domain) {
            return false
        }
    }

    return inScope
}

// Create a new scopeChecker from input reader
func newScopeChecker(r io.Reader) (*scopeChecker, error) {
    s := &scopeChecker{
        patterns:     make([]*regexp.Regexp, 0),
        antipatterns: make([]*regexp.Regexp, 0),
    }

    br := bufio.NewReader(r)
    for {
        line, err := br.ReadString('\n')
        if err == io.EOF {
            break
        }
        if err != nil {
            return nil, err
        }

        p := strings.TrimSpace(line)
        if p == "" {
            continue
        }

        isAnti := false
        if p[0] == '!' {
            isAnti = true
            p = p[1:]
        }

        // Optimize regular expression compilation
        re, err := regexp.Compile(p)
        if err != nil {
            return nil, err
        }

        if isAnti {
            s.antipatterns = append(s.antipatterns, re)
        } else {
            s.patterns = append(s.patterns, re)
        }
    }

    return s, nil
}

// Process domains with scope checker
func processDomains(wg *sync.WaitGroup, checker *scopeChecker, inverse bool, domains <-chan string, results chan<- string) {
    defer wg.Done()
    for domain := range domains {
        inScope := checker.inScope(domain)
        if (!inverse && inScope) || (inverse && !inScope) {
            results <- domain
        }
    }
}

// Get hostname from URL
func getHostname(s string) (string, error) {
    u, err := url.Parse(s)
    if err != nil {
        return "", err
    }

    return u.Hostname(), nil
}

// Check if string is URL
func isURL(s string) bool {
    s = strings.TrimSpace(strings.ToLower(s))
    return strings.HasPrefix(s, "http://") || strings.HasPrefix(s, "https://")
}

// Function to calculate an initial buffer size based on available memory
func initialBufferSize() int {
    memStats := &runtime.MemStats{}
    runtime.ReadMemStats(memStats)
    availableMemory := memStats.Sys // Total virtual memory usage
    initialSize := int(availableMemory / 1024 / 1024 / 4) // Use 25% of available memory for buffer size

    // Set a minimum buffer size of 1000 and a maximum of 10 million
    if initialSize < 1000 {
        return 1000
    } else if initialSize > 10000000 {
        return 10000000
    }

    return initialSize
}

// Open scope file
func openScopefile() (io.ReadCloser, error) {
    if scopeFile != "" {
        return os.Open(scopeFile)
    }

    pwd, err := filepath.Abs(".")
    if err != nil {
        return nil, err
    }

    for {
        f, err := os.Open(filepath.Join(pwd, ".scope"))
        // found one!
        if err == nil {
            return f, nil
        }

        newPwd := filepath.Dir(pwd)
        if newPwd == pwd {
            break
        }
        pwd = newPwd
    }

    return nil, errors.New("unable to find .scope file in current directory or any parent directory")
}

// Main function
func main() {
    // Parse command line flags
    flag.BoolVar(&inverse, "inverse", false, "")
    flag.BoolVar(&inverse, "v", false, "")
    flag.StringVar(&scopeFile, "scope", "", "Path to the .scope file")
    flag.StringVar(&scopeFile, "s", "", "Path to the .scope file (shorthand)")
    flag.IntVar(&numThreads, "threads", 8, "Number of worker threads")
    flag.IntVar(&numThreads, "t", 8, "Number of worker threads (shorthand)")
    flag.Parse()

    // Open scope file
    sf, err := openScopefile()
    if err != nil {
        fmt.Fprintf(os.Stderr, "error opening scope file: %s\n", err)
        return
    }
    defer sf.Close()

    // Create scope checker
    checker, err := newScopeChecker(sf)
    if err != nil {
        fmt.Fprintf(os.Stderr, "error parsing scope file: %s\n", err)
        return
    }

    // Calculate initial buffer size
    initialSize := initialBufferSize()

    // Create channels and wait group with initial buffer size
    domains := make(chan string, initialSize)
    results := make(chan string, initialSize)
    var wg sync.WaitGroup

    // Start worker goroutines
    for i := 0; i < numThreads; i++ {
        wg.Add(1)
        go processDomains(&wg, checker, inverse, domains, results)
    }

    // Read input from stdin and send to workers
    go func() {
        sc := bufio.NewScanner(os.Stdin)
        for sc.Scan() {
            domain := strings.TrimSpace(sc.Text())
            domains <- domain
        }
        close(domains)
    }()

    // Receive and print results
    go func() {
        wg.Wait()
        close(results)
    }()

    // Use buffered writer for output
    writer := bufio.NewWriter(os.Stdout)
    defer writer.Flush()

    for result := range results {
        fmt.Fprintln(writer, result)
    }
}
//end
