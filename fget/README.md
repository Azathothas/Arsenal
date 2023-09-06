- #### Forked: [bp0lr/fget](https://github.com/bp0lr/fget)
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/fget" -o "/usr/local/bin/fget" && sudo chmod +xwr "/usr/local/bin/fget"
sudo eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/fget" --to "/usr/local/bin/fget"

!# Without ROOT
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/fget" -o "$HOME/bin/fget" && chmod +xwr "$HOME/bin/fget"
eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/fget" --to "$HOME/bin/fget"

!# Using go
go install -v "github.com/Azathothas/Arsenal/fget@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir fget && cd fget
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/fget/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/fget/go.mod"
  go get github.com/Azathothas/Arsenal/fget
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./fget"
  file "./fget" ; ldd "./fget" ; ls -lah "./fget"
```
---
