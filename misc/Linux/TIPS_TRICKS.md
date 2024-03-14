
---
- #### **`Archive | Compress`** `$DIR` & all it's `subfolders` with best possible Compression `7z`
```bash
--> !#REF: https://7zip.bugaco.com/7zip/MANUAL/cmdline/switches/index.htm
--> !#REF: https://documentation.help/7-Zip/
!# a     --> add to archive
!# -t7z  --> compress to 7z format
!# -mmt  --> maximum no of threads
!# -mx   --> compress in ultra mode (-mx=9)
!# -bsp1 --> shows progress
!# -bt   --> shows execution time statistics

❯ 7z a -t7z -mx="9" -mmt="$(($(nproc)+1))" -bsp1 -bt "$DIR.7z" "$DIR" 2>/dev/null
```
---
- #### **`CHDIR/CD`** to `$UNKNOWNDIR` within `$DIR`
```bash 
cd "$(find . -maxdepth 1 -type d -exec basename {} \; | grep -Ev '^\.$' | xargs -I {} realpath {})"
```
---
- #### **Default** `$TMP | $TEMP | $TMPDIR` Prefix on any `*Nix` System
```bash
!# mktemp -u --> do not create (dry runs) anything; merely prints a name

❯ dirname "$(mktemp -u)"
❯ SYSTMP="$(dirname $(mktemp -u))" && export SYSTMP="$SYSTMP" && echo -e "\n[+] Default TEMP Dir is $SYSTMP\n"

!# Bonus: Custom Dirs & Names
❯ TMPDIRS="mktemp -d --tmpdir=$SYSTMP/toolpacks XXXXXXX_linux_x86_64" && export TMPDIRS="$TMPDIRS"
❯ pushd "$($TMPDIRS)" >/dev/null 2>&1 && touch "hellow.txt" && popd >/dev/null 2>&1
```
---
- #### **`Delete all files`** from `$DIR` except for `10` random files
```bash

❯ find "$DIR" -type f | shuf -n "$(($(find $DIR -type f | wc -l) - 10))" | xargs rm
```
---
- #### **`PASSWDGEN`** with Highest Entropy & Randomness
```bash
# < "/dev/urandom" --> stores rand data as a file
# tr -cd '[:graph:]' --> deletes non ASCII PRINTABLE (only [:graph:]) printable characters
# tr -d '\\`' --> deletes \ and ` as they cause shell escapes
# head -c $N --> prints the first N char, change this to change the password length

!# Test Strength here: https://www.uic.edu/apps/strong-password/

❯ (< "/dev/urandom" tr -cd '[:graph:]' | tr -d '\\`' | head -c $N) && echo
#Example to generate a 42 length password
❯ (< "/dev/urandom" tr -cd '[:graph:]' | tr -d '\\`' | head -c 42) && echo

!# Using moac :: https://github.com/Seirdy/moac
#arm64 Linux : sudo curl -qfsSL "https://bin.ajam.dev/aarch64_arm64_Linux//moac-pwgen" -o "/usr/local/bin/moac-pwgen" && sudo chmod +x "/usr/local/bin/moac-pwgen"
#x86_64 Linux : sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/moac-pwgen" -o "/usr/local/bin/moac-pwgen" && sudo chmod +x "/usr/local/bin/moac-pwgen"
#Generate with a min/max length of 42
❯ moac-pwgen -q -l 42 -L 42 && echo
```
---
- #### **`List Dirs/Files`** from `$DIR` by **Size** 
```bash
!# du -h           --> displays the disk usage (du) in human-readable format (-h)
!# --max-depth="1" --> limits the depth to 1 (top) level
!# sort -hr        --> sorts the output in human-readable format (KB|MB|GB|TB...) in reverse (Larger Dirs/Files first)

❯ du -h --max-depth="1" "$DIR" 2>/dev/null | sort -hr
```
---
