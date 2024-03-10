- #### **Generate/Create** a ***`TEST_FILE`*** of `nKB|MB|GB|TB` Size
```powershell
!# $PWD --> Current Dir, replace with `$env:TEMP` to use C:\Users\Username\AppData\Local\Temp

#Generate a 100KB File
[System.IO.File]::WriteAllBytes("$PWD/TEST100KB", @(0) * 100KB)
(Get-Item -Path "$PWD/TEST100KB").Length | ForEach-Object { "{0:N2} KB" -f ($_ / 1KB) }

#Generate a 100MB File
[System.IO.File]::WriteAllBytes("$PWD/TEST100MB", @(0) * 100MB)
(Get-Item -Path "$PWD/TEST100MB").Length | ForEach-Object { "{0:N2} MB" -f ($_ / 1MB) }

#Just replace with `n{GB|TB|PB}` etc
````
