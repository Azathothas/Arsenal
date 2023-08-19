### About:
- #### What ? :
> - Slightly revamped vesion of TomNomNom's [Inscope](https://github.com/tomnomnom/hacks/tree/master/inscope) that allows custom **`.scope`** to be defined using **`-s`** or **`--scope`** options
- #### Why ? :
> - You can simply put your `scope` in **any file**, **anywhere** and then specify it using `-s`
> - You can simply use this script via `curl` without any ***Installatiion / Deps***

---
### **Installation**:
 - **Bash**: 
```bash
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/scopeview/scopeview.sh" -o "/usr/local/bin/scopeview" && sudo chmod +xwr "/usr/local/bin/scopeview"
sudo eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/scopeview/scopeview.sh" --to "/usr/local/bin/scopeview"
!# With no root
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/scopeview/scopeview.sh" -o "$HOME/bin/scopeview" && chmod +xwr "$HOME/bin/scopeview"
eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/scopeview/scopeview.sh" --to "$HOME/bin/scopeview"
!# With no Installaton
bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/scopeview/scopeview.sh") {OPTIONS_HERE}
```
---
### Usage
> - Generate a **`.scope`** file using [scopegen](https://github.com/Azathothas/Arsenal/tree/main/scopegen)
> ```bash
> ➼ cat inscope-domains.txt
>        example.com
>        example.org
>        abc.example.com
> ➼ cat outscope-domains.txt
>        oos.example.com
>        oos.abc.example.org
>  ```
>  Then,
>  ```bash 
>  ➼ scopegen -t inscope-domains.txt -in && scopegen -t outscope-domains.txt -os | tee -a .scope
>  ``` 
>  ```bash 
> ➼ cat .scope
>        .*\.example\.com$
>        .*\.example\.org$
>        .*\.abc\.example\.com$
>        !.*oos\.example\.com$
>        !.*oos\.abc\.example\.org$
>  ```
- #### Once you have a `.scope`
```bash
!# Without using any options
!# This assumes there is a **`.scope`** file in your working directory or cwd's parent.
cat your-data-to-be-filtered.ext | scopeview
!# Or Via STDIN
cat your-data-to-be-filtered.ext | bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/scopeview/scopeview.sh")

!# Using -s 
cat your-data-to-be-filtered.ext | scopeview -s .scope-file
!# Or Via STDIN
cat your-data-to-be-filtered.ext | bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/scopeview/scopeview.sh") -s .scope-file
```
