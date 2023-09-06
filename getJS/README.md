- #### Forked: [003random/getJS](https://github.com/003random/getJS)
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/getJS" -o "/usr/local/bin/getJS" && sudo chmod +xwr "/usr/local/bin/getJS"
sudo eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/getJS" --to "/usr/local/bin/getJS"

!# Without ROOT
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/getJS" -o "$HOME/bin/getJS" && chmod +xwr "$HOME/bin/getJS"
eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/getJS" --to "$HOME/bin/getJS"

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
