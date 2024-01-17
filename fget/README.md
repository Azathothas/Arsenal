- #### Forked: [bp0lr/fget](https://github.com/bp0lr/fget)
---
- #### Usage
```mathematica
❯ fget --help
Usage of fget:
  -f, --follow-redirect      Follow redirects (Default: false)
  -H, --header stringArray   Add custom Headers to the request
      --no-folders           Don't store results on separate folders
  -o, --output string        Save to folder. Default: create results folder which will include a folder for each target
  -p, --proxy string         Add a HTTP proxy
  -r, --random-agent         Set a random User Agent
  -t, --timeout int          connection timeout (default 20)
      --unique               Use a unique name for each file
  -u, --url string           The url to check
  -v, --verbose              Display extra info about what is going on
  -w, --workers int          Number of workers (default 20)
```
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
