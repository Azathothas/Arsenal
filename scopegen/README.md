### About:
- #### What ? :
> - Generates **`.scope`** compatible format for [**ScopeView**](https://github.com/Azathothas/Arsenal/tree/main/scopeview) (based on TomNomNom's [Inscope](https://github.com/tomnomnom/hacks/tree/master/inscope))                                              
> - [**BurpScope**](https://github.com/Azathothas/Arsenal/tree/main/burpscope) (based on Edoardottt's [genscope](https://github.com/edoardottt/lit-bb-hack-tools/tree/main/genscope)) is a similar tool for generating **Burpsuite**'s `scope.json`
- #### Why ? :
> - Take a look at [`reconftw.cfg`](https://github.com/six2dez/reconftw/blob/main/reconftw.cfg) which uses the same format for scope parsing
---
### **Installation**
```bash
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/scopegen" -o "/usr/local/bin/scopegen" && sudo chmod +xwr "/usr/local/bin/scopegen"
sudo eget "https://bin.ajam.dev/x86_64_Linux/scopegen" --to "/usr/local/bin/scopegen"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/scopegen" -o "$HOME/bin/scopegen" && chmod +xwr "$HOME/bin/scopegen"
eget "https://bin.ajam.dev/x86_64_Linux/scopegen" --to "$HOME/bin/scopegen"

!# Using go
go install -v "github.com/Azathothas/Utils/Binaries/Tools/Arsenal/scopegen@main"
```
---
### Usage: `scopegen -h` 
 
 ```bash
Usage: scopegen [OPTIONS]
Options:
  -in           generate in-scope domains
  -os           generate out-of-scope domains
  -t            path to file containing domain list
  -wl           generate wildcard in-scope domains
Examples:
cat domains.txt | scopegen -in           # Generate in-scope domains 
cat domains.txt | scopegen -wl           # Generate wildcard in-scope domains
cat domains.txt | scopegen -os           # Generate wildcard out-of-scope domains
 ```
---
**Additional examples**: 
- #### Inputs
 `cat inscope-domains.txt`
```bash 
 example.com
 example.org
 abc.example.com
 ```
 `cat outscope-domains.txt`
 ```bash
 oos.example.com
 oos.abc.example.org
 ```
---
- Generate **`inscope`** Domain Regexes:
```bash
scopegen -t inscope-domains.txt -in
!# Or Via STDIN
cat inscope-domains.txt | scopegen -in
```
- #### Output
```bash
 .*\.example\.com$
.*\.example\.org$
.*\.abc\.example\.com$
```
---
- Generate **`outscope`**  Domain Regexes:
```bash
scopegen -t outscope-domains.txt -os
!# Or Via STDIN
cat outscope-domains.txt | scopegen -os
```
- #### Output
```bash
!.*oos\.example\.com$
!.*oos\.abc\.example\.org$
```
---
- **`Wildcard`** `*.` Regexes:
> Note on `wildcards`:
> - Use [subxtract](https://github.com/Azathothas/Arsenal/tree/main/subxtract) to filter first
> ```bash
> #using subxtract, extract only root domains
> subxtract -i inscope-domains.txt | scopegen -wl
> #this will only print main domain
> .*example.*
> ```
```bash
!# Inscope Wildcards
scopegen -t inscope-domains.txt -wl
!# Ouput:
.*example.*
.*abc.*

!# OutScope Wildcards
!# This is kind of meaningless as you should never filter outscope assets based on regex.
!# Only Filter Strictly, and thus, piping anything to scopegen -wl is treated as `Inscope`
!# If you really want to filter Outscope domains based on Wildcards, for whatever reason:
scopegen -t outscope-domains.txt -wl | awk '{print "!" $0}'
!# Output:
!.*oos.*
.*oos.* (Original Output) + Prepended by `!`
!# In the example above, we simply append `!` to make it outscope
```
---
