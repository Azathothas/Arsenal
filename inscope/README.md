```bash
!# Install
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Utils/main/Binaries/Toolpacks/x86_64/inscope" -o "/usr/local/bin/inscope" && sudo chmod +xwr "/usr/local/bin/inscope"
sudo eget "https://raw.githubusercontent.com/Azathothas/Utils/main/Binaries/Toolpacks/x86_64/inscope" --to "/usr/local/bin/inscope"

!# Without ROOT
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Utils/main/Binaries/Toolpacks/x86_64/inscope" -o "$HOME/bin/inscope" && chmod +xwr "$HOME/bin/inscope"
eget "https://raw.githubusercontent.com/Azathothas/Utils/main/Binaries/Toolpacks/x86_64/inscope" --to "$HOME/bin/inscope"

!# Using go
go install -v "github.com/Azathothas/Utils/Binaries/Tools/Arsenal/inscope@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir inscope && cd inscope
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Utils/main/Binaries/Tools/Arsenal/inscope/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Utils/main/Binaries/Tools/Arsenal/inscope/go.mod"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./inscope"
  file "./inscope" ; ldd "./inscope" ; ls -lah "./inscope"
```
---
```bash
[Diff]
[+] Added `-v | --inverse` flag to print OOS (https://github.com/tomnomnom/hacks/pull/40)
```
---
