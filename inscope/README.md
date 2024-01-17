- #### Usage
```mathematica
❯ inscope --help
Filters in scope and out of scope urls from stdin.
Requires you have .scope in CWD or Parent.
To generate one: https://github.com/Azathothas/Arsenal/tree/main/scopegen
For a Bash Alternative: https://github.com/Azathothas/Arsenal/tree/main/scopeview

Options:
  <no options>          look for .scope file and filter input (STDIN)
  -v, --inverse         Prints out of scope items
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/inscope" -o "/usr/local/bin/inscope" && sudo chmod +xwr "/usr/local/bin/inscope"
sudo eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/inscope" --to "/usr/local/bin/inscope"

!# Without ROOT
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/inscope" -o "$HOME/bin/inscope" && chmod +xwr "$HOME/bin/inscope"
eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/inscope" --to "$HOME/bin/inscope"

!# Using go
go install -v "github.com/Azathothas/Arsenal/inscope@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir inscope && cd inscope
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/inscope/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/inscope/go.mod"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./inscope"
  file "./inscope" ; ldd "./inscope" ; ls -lah "./inscope"
```
---
```bash
[Diff]
[+] Added `-v | --inverse` flag to print OOS (https://github.com/tomnomnom/hacks/pull/40)
```
---
