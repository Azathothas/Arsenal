- #### About:
> - A very simple CLI Implementation of [CaliDog/certstream-go](https://github.com/CaliDog/certstream-go) Library
```bash
!# Install
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/certstream" -o "/usr/local/bin/certstream" && sudo chmod +xwr "/usr/local/bin/certstream"
sudo eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/certstream" --to "/usr/local/bin/certstream"

!# Without ROOT
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/certstream" -o "$HOME/bin/certstream" && chmod +xwr "$HOME/bin/certstream"
eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/certstream" --to "$HOME/bin/certstream"

!# Using go
go install -v "github.com/Azathothas/Arsenal/certstream@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir certstream && cd certstream
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/certstream/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/certstream/go.mod"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./certstream"
  file "./certstream" ; ldd "./certstream" ; ls -lah "./certstream"
```
