- #### Forked: [tomnomnom/comb](https://github.com/tomnomnom/hacks/tree/master/comb)
---
- #### Usage
```mathematica
❯ comb --help
Combine the lines from two files in every combination

Usage:
  comb [OPTIONS] <prefixfile> <suffixfile>

Options:
  -f, --flip             Flip mode (order by suffix)
  -s, --separator <str>  String to place between prefix and suffix
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/comb" -o "/usr/local/bin/comb" && sudo chmod +xwr "/usr/local/bin/comb"
sudo eget "https://bin.ajam.dev/x86_64_Linux/comb" --to "/usr/local/bin/comb"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/comb" -o "$HOME/bin/comb" && chmod +xwr "$HOME/bin/comb"
eget "https://bin.ajam.dev/x86_64_Linux/comb" --to "$HOME/bin/comb"

!# Using go
go install -v "github.com/Azathothas/Arsenal/comb@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir comb && cd comb
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/comb/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/comb/go.mod"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./comb"
  file "./comb" ; ldd "./comb" ; ls -lah "./comb"
```
