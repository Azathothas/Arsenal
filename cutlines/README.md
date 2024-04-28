- #### Usage
```mathematica
❯ cutlines --help
Cut & Paste Lines (from|to) file without $TEMPFILE even if another process is writing to it

Options:
  -l, --lines int
        Number (n) of lines to cut
  -f, --file string
        Input file to cut lines from
  -o, --output string
        Output file to paste cut lines (Use /dev/null if output is unneeded)
  -p, --print
        Print the lines that are cut to stdout
  -q, --quiet
        Quiet mode (Suppress Info & Stats)

 ~> #Cut 100,000 lines from input.txt, paste it in output.txt
  ❯ cutlines --lines 100000 --file input.txt --output output.txt

 ~> #Same as above but be completely quiet
  ❯ cutlines --lines 100000 --file input.txt --output output.txt --quiet

 ~> #Same as above but be pipe friendly by printing lines to stdout
  ❯ cutlines --lines 100000 --file input.txt --output /dev/null --print --quiet

 ~> !! #By specifying a value for --lines larger than total lines of --file input.txt, you will completetly cut all lines from input.txt
 ~> !! #Use tee | >> instead of -o | --output flags, as files WILL GET CORRUPTED if they are being written using os file locks.
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/cutlines" -o "/usr/local/bin/cutlines" && sudo chmod +xwr "/usr/local/bin/cutlines"
sudo eget "https://bin.ajam.dev/$(uname -m)/cutlines" --to "/usr/local/bin/cutlines"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/$(uname -m)/cutlines" -o "$HOME/bin/cutlines" && chmod +xwr "$HOME/bin/cutlines"
eget "https://bin.ajam.dev/$(uname -m)/cutlines" --to "$HOME/bin/cutlines"
```
---
```bash
!# Build
  pushd "$(mktemp -d)" >/dev/null 2>&1 && mkdir "./cutlines" && cd "./cutlines"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/cutlines/main.go"
  go mod init "github.com/Azathothas/Arsenal/cutlines" ; go mod tidy
  GOOS="linux" GOARCH="amd64" CGO_ENABLED="0" go build -v -ldflags="-buildid= -s -w -extldflags '-static'" -o "./cutlines"
  file "./cutlines" ; ldd "./cutlines" ; du -sh "./cutlines"
  #Copy the executable & exit
  popd >/dev/null 2>&1
```
---
