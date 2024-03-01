- #### About:
> - A very simple CLI Implementation of [CaliDog/certstream-go](https://github.com/CaliDog/certstream-go) Library with [some QOL changes](https://github.com/Azathothas/Arsenal/blob/main/certstream/main.go)
```bash
!# Install CLI
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/certstream" -o "/usr/local/bin/certstream" && sudo chmod +xwr "/usr/local/bin/certstream"
sudo eget "https://bin.ajam.dev/x86_64_Linux/certstream" --to "/usr/local/bin/certstream"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/certstream" -o "$HOME/bin/certstream" && chmod +xwr "$HOME/bin/certstream"
eget "https://bin.ajam.dev/x86_64_Linux/certstream" --to "$HOME/bin/certstream"

!# Using go
go install -v "github.com/Azathothas/Arsenal/certstream@main"
```
---
- #### [CLI (Client)]()
```bash
!# CLI Usage:
certstream `{OPTS}`
  -url             --> Certstream Server WebSocket URL (ws:// | wss://)      # Use: -url "wss://certstream.calidog.io" if you don't have your own server
  -domains-only    --> Extract and Print only Domains from Certstream Output #Recommended if you don't want to overload the cli (Raw JSON is hugeeee)
  -insecure        --> Allows Invalid/Insecure SSL Connections, for wss://
  -quiet           --> Suppress Standard Error Output (Useful for Automation)
  -skip-heartbeats --> Skip Sending Heartbeat (Ping) Messages to Certstream Server #Some servers will disconnect you if you don't ping

!# Example:
certstream -url "wss://certstream.calidog.io" -domains-only -quiet
```
- #### [Server](https://github.com/d-Rickyy-b/certstream-server-go) 
```bash
!# Install Server
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/certstream-server-go" -o "/usr/local/bin/certstream-server-go" && sudo chmod +xwr "/usr/local/bin/certstream-server-go"
sudo eget "https://bin.ajam.dev/x86_64_Linux/certstream-server-go" --to "/usr/local/bin/certstream-server-go"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/certstream-server-go" -o "$HOME/bin/certstream-server-go" && chmod +xwr "$HOME/bin/certstream-server-go"
eget "https://bin.ajam.dev/x86_64_Linux/certstream-server-go" --to "$HOME/bin/certstream-server-go"

!# Config:
wget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/certstream/server_config.yaml" -O "/tmp/server_config.yaml"

!# Usage: https://github.com/d-Rickyy-b/certstream-server-go#connecting
Default Addr ::8888
certstream-server-go -config "/tmp/server_config.yaml"

!# Client
certstream -url "ws://localhost:8888" -domains-only -quiet
```
---
```bash
!# Build CLI
  pushd "$(mktemp -d)" && mkdir "./certstream" && cd "./certstream"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/certstream/main.go"
  #curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/certstream/go.mod"
  go mod init "github.com/Azathothas/Arsenal/certstream" ; go mod tidy
  go get github.com/Azathothas/Arsenal/certstream
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./certstream"
  file "./certstream" ; ldd "./certstream" ; ls -lah "./certstream"

!# Build Server
  pushd "$(mktemp -d)" && git clone --filter "blob:none" "https://github.com/d-Rickyy-b/certstream-server-go" && cd "./certstream-server-go"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./certstream-server-go" "./cmd/main.go"
  mv "./certstream-server-go" "$HOME/bin/certstream-server-go" ; popd ; go clean -cache -fuzzcache -modcache -testcache
```
