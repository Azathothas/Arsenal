```bash
                 _,--=--._
               ,'    _    `.
              -    _(_)_o   -
         ____'    /_  _/]    `____
  -=====::(+):::::::::::::::::(+)::=====- : Public-Suffix based TLDs (Top-Level-Domains) & Root Domain Extractor 
           (+).""""""""""""",(+)
               . subXtract ,
                 `  -=-  '
```
---
### About:
- #### What ? :
> Wrapper around [go-fasttld](https://github.com/elliotwutingfeng/go-fasttld) for extracting **`TLD`** (Top-Level-Domains) & **`ROOT_DOMAIN`** using ***accurate*** and ***always-uptodate*** `public-suffix` list from **domains**, **urls**, **ipv4**, **ipv6**, etc.
- #### Why ? :
> - Tools like [tomnomnom/unfurl](https://github.com/tomnomnom/unfurl) rely on [Hardcoded Regexes](https://github.com/tomnomnom/unfurl/blob/master/main.go) and thus fail to properly separate tld-suffix from actual domains
> - Instead, [go-fasttld](https://github.com/elliotwutingfeng/go-fasttld) uses [Public Suffix List](https://raw.githubusercontent.com/publicsuffix/list/master/public_suffix_list.dat) which is autoupdated regularly.
- #### Where ? :
> Used as a helper utility in tools like [Scopegen](https://github.com/Azathothas/Arsenal/tree/main/scopegen) & [Burpscope](https://github.com/Azathothas/Arsenal/tree/main/burpscope) to generate scopes, among other places.
---
### **Installation**:
 - **Bash**: 
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/subxtract" -o "/usr/local/bin/subxtract" && sudo chmod +xwr "/usr/local/bin/subxtract"
sudo eget "https://bin.ajam.dev/$(uname -m)/subxtract" --to "/usr/local/bin/subxtract"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/$(uname -m)/subxtract" -o "$HOME/bin/subxtract" && chmod +xwr "$HOME/bin/subxtract"
eget "https://bin.ajam.dev/$(uname -m)/subxtract" --to "$HOME/bin/subxtract"

!# Using go
go install -v "github.com/Azathothas/Arsenal/subxtract@main"
```
---
### Usage:
`subxtract --help`
```bash
➼ Usage: subxtract -f </path/to/domain/urls.txt> <opts>
        : subxtract "https://a.b.c.example.com.np" <opts>
STDIN   : cat </path/to/domain/urls.txt> | subxtract <opts>
          echo "https://a.b.c.example.com.np" | subxtract <opts>
Flags:
  -d, --domains             Print the root domain and suffix combined
  -f, --file string         Input file containing URLs|Domains (one per line)
  -h, --help                help for subxtract
  -i, --ignore-subdomains   Ignore (Exclude) subdomains
  -j, --json                Output in JSON Format (Everything)
  -p, --private-suffix      Include Private Suffix (Example: blogspot.com)
  -r, --roots               Print only the root domain (without suffix)
  -t, --to-punycode         Convert Internationalized Domain Names (IDN) to Punycode (ASCII Characters)
```

---
### Examples:
- #### Input
**`cat domains.txt`** 
> - You can also pass `urls`, doesn't really matter
> - **Don't pass wildcards `(.*)`**
```bash
abc.example.com
abc.example.net
apple.com
be.banana.com
example.com
example.com.np
example.net
example.org
xyz.abc.example.com
xyz.abc.example.net
```
---
- To Extract **`Root Domain Names`** ( **NO `.tld`**)
```bash
subxtract -f domains.txt -r | awk '!seen[$0]++'
!# Or Via STDIN
cat domains.txt | subxtract -r | awk '!seen[$0]++'
```
- #### Output
```bash
example
apple
banana
```
---
- Similarly, To Extract **`Root Domain Names`** **`+`** **`Top Level Domains (TLDs)`**
```bash
subxtract -f domains.txt -d | awk '!seen[$0]++'
!# Or Via STDIN
cat domains.txt | subxtract -d | awk '!seen[$0]++'
```
- #### Output
```bash
example.com
apple.com
banana.com
example.net
example.org
example.com.np
```
---
- #### Build
```bash
!# Build
  pushd "$(mktemp -d)" >/dev/null 2>&1 && mkdir "./subxtract" && cd "./subxtract"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.go"
  go mod init "github.com/Azathothas/Arsenal/subxtract" ; go mod tidy
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./subxtract"
  file "./subxtract" ; ldd "./subxtract" ; ls -lah "./subxtract"
  #Copy the executable & exit
  popd >/dev/null 2>&1
```
