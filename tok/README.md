- #### Forked: [tomnomnom/tok](https://github.com/tomnomnom/hacks/tree/master/tok)
---
- #### Usage
```mathematica
❯ tok --help
Usage of tok:
  -alpha-num-only
        return only strings containing at least one letter and one number
  -delim-exceptions string
        don't use the characters provided as delimiters
  -max int
        max length of string to be output (default 25)
  -min int
        min length of string to be output (default 1)
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/tok" -o "/usr/local/bin/tok" && sudo chmod +xwr "/usr/local/bin/tok"
sudo eget "https://bin.ajam.dev/x86_64_Linux/tok" --to "/usr/local/bin/tok"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/tok" -o "$HOME/bin/tok" && chmod +xwr "$HOME/bin/tok"
eget "https://bin.ajam.dev/x86_64_Linux/tok" --to "$HOME/bin/tok"

!# Using go
go install -v "github.com/Azathothas/Arsenal/tok@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir tok && cd tok
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/tok/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/tok/go.mod"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./tok"
  file "./tok" ; ldd "./tok" ; ls -lah "./tok"
```
