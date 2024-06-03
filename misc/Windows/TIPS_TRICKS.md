- #### **Get MAX** Supported **`RAM`**
```powershell
#RECOMMENDED: https://github.com/a1ive/nwinfo
(wmic memphysical get maxcapacity | Select-Object -Skip 1 | ForEach-Object { [int]$_ } | Measure-Object -Sum | Select-Object -ExpandProperty Sum) / 1MB
```
---
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
---
- #### **`PASSWDGEN`** with Highest Entropy & Randomness
```powershell
# < "/dev/urandom" --> stores rand data as a file
# 33..126 --> ASCII range 33 to 126 (inclusive)
# { $_ -ne 96 -and $_ -ne 92 } --> excluding the characters \ and `
# { [char]$_ } --> convert ASCII back to printable chars
# Get-Random -Count $N --> prints the first N char, change this to change the password length

!# Test Strength here: https://www.uic.edu/apps/strong-password/

❯  -join ((33..126 | Where-Object { $_ -ne 96 -and $_ -ne 92 }) | ForEach-Object { [char]$_ } | Get-Random -Count $N)
#Example to generate a 42 length password
❯ -join ((33..126 | Where-Object { $_ -ne 96 -and $_ -ne 92 }) | ForEach-Object { [char]$_ } | Get-Random -Count 42)

!# Using moac :: https://github.com/Seirdy/moac
#x64 Windows : https://bin.ajam.dev/x64_Windows/moac-pwgen
#Generate with a min/max length of 42
❯ moac-pwgen -q -l 42 -L 42 && echo
```
---
