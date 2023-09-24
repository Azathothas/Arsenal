- #### Forked: [NitescuLucian/hacks/tree/main/wpjh](https://github.com/NitescuLucian/hacks/tree/main/wpjh)
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/wpjson-parser" -o "/usr/local/bin/wpjson-parser" && sudo chmod +xwr "/usr/local/bin/wpjson-parser"
sudo eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/wpjson-parser" --to "/usr/local/bin/wpjson-parser"

!# Without ROOT
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/wpjson-parser" -o "$HOME/bin/wpjson-parser" && chmod +xwr "$HOME/bin/wpjson-parser"
eget "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/wpjson-parser" --to "$HOME/bin/wpjson-parser"

!# Using go
go install -v "github.com/Azathothas/Arsenal/wpjson-parser@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir wpjson-parser && cd wpjson-parser
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wpjson-parser/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wpjson-parser/go.mod"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./wpjson-parser"
  file "./wpjson-parser" ; ldd "./wpjson-parser" ; ls -lah "./wpjson-parser"
```
---
