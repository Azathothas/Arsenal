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
!# Build CLI
  cd $(mktemp -d) && mkdir certstream && cd certstream
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/certstream/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/certstream/go.mod"
  go get github.com/Azathothas/Arsenal/certstream
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./certstream"
  file "./certstream" ; ldd "./certstream" ; ls -lah "./certstream"

!# Build Server
  pushd "$(mktemp -d)" && git clone --filter "blob:none" "https://github.com/d-Rickyy-b/certstream-server-go" && cd "./certstream-server-go"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./certstream-server-go" "./cmd/main.go"
  mv "./certstream-server-go" "$HOME/bin/certstream-server-go" ; popd ; go clean -cache -fuzzcache -modcache -testcache
```
