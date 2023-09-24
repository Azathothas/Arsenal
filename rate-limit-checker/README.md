- #### Forked: [Sh1Yo/rate-limit-checker](https://github.com/Sh1Yo/rate-limit-checker)
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/rate-limit-checker" -o "/usr/local/bin/rate-limit-checker" && sudo chmod +xwr "/usr/local/bin/rate-limit-checker"
sudo eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/rate-limit-checker" --to "/usr/local/bin/rate-limit-checker"

!# Without ROOT
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/rate-limit-checker" -o "$HOME/bin/rate-limit-checker" && chmod +xwr "$HOME/bin/rate-limit-checker"
eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/rate-limit-checker" --to "$HOME/bin/rate-limit-checker"

!# Using go
go install -v "github.com/Azathothas/Arsenal/rate-limit-checker@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir rate-limit-checker && cd rate-limit-checker
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/rate-limit-checker/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/rate-limit-checker/go.mod"
  go get github.com/Azathothas/Arsenal/rate-limit-checker
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./rate-limit-checker"
  file "./rate-limit-checker" ; ldd "./rate-limit-checker" ; ls -lah "./rate-limit-checker"
```
---
