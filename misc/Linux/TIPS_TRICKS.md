- #### **`Archive | Compress`** `$DIR` & all it's `subfolders` with best possible Compression `7z`
```bash
--> !#REF: https://7zip.bugaco.com/7zip/MANUAL/cmdline/switches/index.htm
--> !#REF: https://documentation.help/7-Zip/
!# a     --> add to archive
!# -t7z  --> compress to 7z format
!# -mmt  --> maximum no of threads
!# -mx   --> compress in ultra mode (-mx=9)
!# -bt   --> shows execution time statistics
7z a -t7z -mx="9" -mmt="$(($(nproc)+1))" -bt "$DIR.7z" "$DIR" 2>/dev/null
```

- #### **Delete all files** from `$DIR` except for `10` random files
```bash
find "$DIR" -type f | shuf -n "$(($(find $DIR -type f | wc -l) - 10))" | xargs rm
```
