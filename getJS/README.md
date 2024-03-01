- #### Forked: [003random/getJS](https://github.com/003random/getJS)
---
- #### Usage
```mathematica
❯ getJS --help
Usage of getJS:
      --complete             Complete the url. e.g. append the domain to the path
  -H, --header stringArray   Any HTTP headers(-H "Authorization:Bearer token")
      --input string         Input file with urls
      --insecure             Check the SSL security checks. Use when the certificate is expired or invalid
      --method string        The request method. e.g. GET or POST (default "GET")
      --nocolors             Enable or disable colors
      --output string        Output file to save the results to
      --resolve              Output only existing files
      --timeout int          Max timeout for the requests (default 10)
      --url string           The url to get the javascript sources from
      --verbose              Display info of what is going on
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/getJS" -o "/usr/local/bin/getJS" && sudo chmod +xwr "/usr/local/bin/getJS"
sudo eget "https://bin.ajam.dev/x86_64_Linux/getJS" --to "/usr/local/bin/getJS"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/getJS" -o "$HOME/bin/getJS" && chmod +xwr "$HOME/bin/getJS"
eget "https://bin.ajam.dev/x86_64_Linux/getJS" --to "$HOME/bin/getJS"

!# Using go
go install -v "github.com/Azathothas/Arsenal/getJS@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir getJS && cd getJS
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/getJS/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/getJS/go.mod"
  go get github.com/Azathothas/Arsenal/getJS
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./getJS"
  file "./getJS" ; ldd "./getJS" ; ls -lah "./getJS"
```
---
