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
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh" -o "/usr/local/bin/subxtract" && sudo chmod +xwr "/usr/local/bin/subxtract"
sudo eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh" --to "/usr/local/bin/subxtract"
!# With no root
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh" -o "$HOME/bin/subxtract" && chmod +xwr "$HOME/bin/subxtract"
eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh" --to "$HOME/bin/subxtract"
!# With no Installaton
bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh") {OPTIONS_HERE}
```
---
### Usage:
`subxtract --help`
```bash

                 _,--=--._
               ,'    _    `.
              -    _(_)_o   -
         ____'    /_  _/]    `____
  -=====::(+):::::::::::::::::(+)::=====-
           (+).""""""""""""",(+)
               . subXtract ,
                 `  -=-  '

➼ Usage: subxtract -i </path/to/domain/urls.txt> 
InstallLess: bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh") {OPTIONS_HERE}
       
Extended Help:
-i,  --input     Specify input file containing domains or urls (Required)
                 else stdin: cat domains.txt | subxtract

-s,  --subs      Extract Subdomains only (default: false)
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
subxtract -i domains.txt
!# Or Via STDIN
cat domains.txt | subxtract
```
>```bash
> !# InstallationLess
> bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh") -i domains.txt
> !# Or via Stdin
> cat domains.txt | bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh")
> ```
- #### Output
```bash
example
apple
banana
```
---
- Similarly, To Extract **`Root Domain Names`** **`+`** **`Top Level Domains (TLDs)`**
```bash
subxtract -i domains.txt -s
!# Or Via STDIN
cat domains.txt | subxtract -s 
```
>```bash
> !# InstallationLess
> bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh") -i domains.txt -s
> !# Or via Stdin
> cat domains.txt | bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/subxtract/subxtract.sh") -s
> ```
- #### Output
```bash
example.com
example.net
apple.com
banana.com
example.com.np
example.org
```
---
