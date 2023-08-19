<img src="https://user-images.githubusercontent.com/58171889/232502216-cff949a2-aa18-4d6e-bc74-674ab6deaff1.gif" width="220" height="220">

```bash
        ╭┳╮
╭┳┳┳━┳┳┳╯┣╋┳┳━━╮
┃W┃O┃R╭┫D┃I┃U┃M┃ : Wordlist Fetcher & Updater
╰━━┻━┻╯╰━┻┻━┻┻┻╯
```
### About:
A dirty utility to fetch, create & update fuzzing wordlists

### **Installation**:
 - **Bash**: 
```bash
!# With ROOT
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/wordium.sh" -o "/usr/local/bin/wordium" && sudo chmod +xwr "/usr/local/bin/wordium"
sudo eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/wordium.sh" --to "/usr/local/bin/wordium"

!# No Root
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/wordium.sh" -o "$HOME/bin/wordium" && chmod +xwr "$HOME/bin/wordium"
eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/wordium.sh" --to "$HOME/bin/wordium"

!# InstallationLess
bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/wordium.sh")
``` 
### Usage:
`wordium --help`
```bash

        ╭┳╮
╭┳┳┳━┳┳┳╯┣╋┳┳━━╮
┃W┃O┃R╭┫D┃I┃U┃M┃
╰━━┻━┻╯╰━┻┻━┻┻┻╯

➼ Usage: wordium -w </path/to/your/wordlist/directory> 

Extended Help
-w,  --wordlist-dir     Specify where to create your wordlists (Required, else specify as $WORDLIST in $ENV:VAR)
-q,  --quick            Quick Mode [Only Use if not first time]
```
### Practical Uses:
```bash
Look at 'https://github.com/Azathothas/Wordlists'
This uses wordium in Github Actions ('https://github.com/Azathothas/Wordlists/blob/main/.github/workflows/fetch_update_wordlists.yaml') to fetch the latest lists every 12 hrs
```
### Some Tips:
1. You want to add a new word to the wordlist? [Example: /api/v1/graphql]
```bash
#Make sure you remove `/` unless intended of course!
echo "api/v1/graphql" | anew $WORDLIST/x_lhf_mini.txt
```
> Used anew (so only adds new entries) and x_lhf_mini (because, it's automagically added, sorted in all other wordlists)
```bash
#And now run
wordium -w $/path/to/WORDLIST
```
