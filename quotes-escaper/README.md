- #### Usage
```mathematica
❯ quotes-escaper --help
Escapes Quotes (Single | Double)

Options:
  -s | --single Escape single quotes
  -d | --double Escape double quotes
  -f | --file   File path to read input from

# Input can be also passed from stdin or as positional argument
  ❯ quotes-escaper -s "single's" (OR) echo "single's" | quotes-escaper -s (OR) cat "file.txt" | quotes-escaper -s
  ~> single\'s

  ❯ quotes-escaper -d 'double "" quotes' (OR) echo 'double "" quotes' | quotes-escaper -d (OR) cat "file.txt" | quotes-escaper -d
  ~> double \"\" quotes
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/quotes-escaper" -o "/usr/local/bin/quotes-escaper" && sudo chmod +xwr "/usr/local/bin/quotes-escaper"
sudo eget "https://bin.ajam.dev/$(uname -m)/quotes-escaper" --to "/usr/local/bin/quotes-escaper"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/$(uname -m)/quotes-escaper" -o "$HOME/bin/quotes-escaper" && chmod +xwr "$HOME/bin/quotes-escaper"
eget "https://bin.ajam.dev/$(uname -m)/quotes-escaper" --to "$HOME/bin/quotes-escaper"

!# Using go
go install -v "github.com/Azathothas/Arsenal/quotes-escaper@main"
```
---
```bash
!# Build
  pushd "$(mktemp -d)" >/dev/null 2>&1 && mkdir "./quotes-escaper" && cd "./quotes-escaper"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/quotes-escaper/main.go"
  go mod init "github.com/Azathothas/Arsenal/quotes-escaper" ; go mod tidy
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./quotes-escaper"
  file "./quotes-escaper" ; ldd "./quotes-escaper" ; ls -lah "./quotes-escaper"
  #Copy the executable & exit
  popd >/dev/null 2>&1
```
---
