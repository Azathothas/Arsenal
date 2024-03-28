- #### Usage
```mathematica
❯ inscope --help
Filters in scope and out of scope urls (subdomains) from stdin.
Requires you have .scope in CWD or Parent or passed via -s | --scope <file>
To generate one: https://github.com/Azathothas/Arsenal/tree/main/scopegen
For a Bash Alternative: https://github.com/Azathothas/Arsenal/tree/main/scopeview

Options:
 <no options> look for .scope file and filter input (STDIN)
 -v, --inverse Prints out of scope items (default: false)
 -s, --scope <file> Path to scopefile (default: looks for .scope)
 -t, --threads <number> Number of worker threads (default: 8)
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/inscope" -o "/usr/local/bin/inscope" && sudo chmod +xwr "/usr/local/bin/inscope"
sudo eget "https://bin.ajam.dev/$(uname -m)/inscope" --to "/usr/local/bin/inscope"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/$(uname -m)/inscope" -o "$HOME/bin/inscope" && chmod +xwr "$HOME/bin/inscope"
eget "https://bin.ajam.dev/$(uname -m)/inscope" --to "$HOME/bin/inscope"

!# Using go
go install -v "github.com/Azathothas/Arsenal/inscope@main"
```
---
```bash
!# Build
  pushd "$(mktemp -d)" >/dev/null 2>&1 && mkdir "./inscope" && cd "./inscope"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/inscope/main.go"
  go mod init "github.com/Azathothas/Arsenal/inscope" ; go mod tidy
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./inscope"
  file "./inscope" ; ldd "./inscope" ; ls -lah "./inscope"
  #Copy the executable & exit
  popd >/dev/null 2>&1
```
---
```bash
[Diff]
[+] Added `-s | --scope` flag to manually provide a .scope file
[+] Added `-t | --threads` flag to specify number of concurrent workers
[+] Added `-v | --inverse` flag to print OOS (https://github.com/tomnomnom/hacks/pull/40)
```
---
