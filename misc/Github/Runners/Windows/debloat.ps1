# Use:
# Invoke-Expression ((Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Github/Runners/Windows/debloat.ps1").Content)
# Invoke-Expression ((Invoke-WebRequest -Uri "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Github/Runners/Windows/debloat.ps1").Content)

#The Build Image & Docs: https://github.com/actions/runner-images/blob/main/images/windows/Windows2022-Readme.md

#----------------------------------------------------------------------------#
if (($env:USER -eq "runneradmin") -or ($(whoami) -match "runneradmin") -and (Test-Path "$env:SystemDrive\runners")) {
    Write-Host "`n[+] Debloating GH Runner...`n"
    ##Presets
    #-------------#
    $ErrorActionPreference = "SilentlyContinue" ; $env:ErrorActionPreference = "SilentlyContinue"
    Import-Module "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1" ; refreshenv
    #----------------------------------------------------------------------------#        
    $rootDisk = Get-PSDrive -Name C ; $env:ROOT_DISK = $rootDisk.Root
    $TOTAL_DSIZE_GB = [math]::round(($rootDisk.Used + $rootDisk.Free) / 1GB, 2) ; $env:TOTAL_DSIZE = "${TOTAL_DSIZE_GB}GB"
    $INITIAL_DSIZE_GB = [math]::round($rootDisk.Used / 1GB, 2) ; $env:INITIAL_DSIZE = "${INITIAL_DSIZE_GB}GB"
    $INITIAL_FREEP = [math]::round((($rootDisk.Free / ($rootDisk.Used + $rootDisk.Free)) * 100), 2) ; $env:INITIAL_FREEP = "${INITIAL_FREEP}%"
    #----------------------------------------------------------------------------#
    ##Purge Docker Cache
     Start-Job -ScriptBlock { docker system prune --all --force }
    ##Purge Installed golang
     Start-Job -ScriptBlock {
        (env | Select-String -Pattern "GOROOT_" | ForEach-Object { ($_ -split "=")[1] }).Trim() | ForEach-Object { Remove-Item -Path $_ -Recurse -Force -ErrorAction SilentlyContinue }
        Remove-Item "Env:\GOPATH","Env:\GOROOT","Env:\GOTOOLDIR" -ErrorAction SilentlyContinue
     }
    #----------------------------------------------------------------------------#
    ##Cleanup $env:ProgramData [C:\ProgramData]
     Start-Job -ScriptBlock { Remove-Item -Path "$env:ProgramData\Package Cache" -Recurse -Force -ErrorAction SilentlyContinue }
    #----------------------------------------------------------------------------#
    ##Cleanup $env:ProgramFiles [C:\Program Files]
     Start-Job -ScriptBlock { Remove-Item -Path "$env:ProgramFiles\Azure Cosmos DB Emulator" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:ProgramFiles\Amazon" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:ProgramFiles\Google" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:ProgramFiles\MongoDB" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:ProgramFiles\MySQL" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:ProgramFiles\PostgreSQL" -Recurse -Force -ErrorAction SilentlyContinue }
    #----------------------------------------------------------------------------#
    ##Cleanup $env:ProgramFiles [C:\Program Files (x86)]
     Start-Job -ScriptBlock { Remove-Item -Path "${env:ProgramFiles(x86)}\Android" -Recurse -Force -ErrorAction SilentlyContinue }
    #----------------------------------------------------------------------------#
    ##Cleanup $env:SystemDrive [C:\]
     Start-Job -ScriptBlock { Remove-Item -Path "$env:SystemDrive\ghcup" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:SystemDrive\hostedtoolcache" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:SystemDrive\Julia" -Recurse -Force -ErrorAction SilentlyContinue }
     Start-Job -ScriptBlock { Remove-Item -Path "$env:SystemDrive\Miniconda" -Recurse -Force -ErrorAction SilentlyContinue }
    #----------------------------------------------------------------------------#
    ##Wait
    Get-Job | Wait-Job ; Get-Job | Remove-Job
    $rootDisk = Get-PSDrive -Name C ; $env:ROOT_DISK = $rootDisk.Root
    $FINAL_DSIZE_GB = [math]::round($rootDisk.Used / 1GB, 2) ; $env:FINAL_DSIZE = "${FINAL_DSIZE_GB}G"
    $FINAL_FREEP = [math]::round((($rootDisk.Free / ($rootDisk.Used + $rootDisk.Free)) * 100), 2) ; $env:FINAL_FREEP = "${FINAL_FREEP}%"
    Write-Host "`n[+] Reduced Disk (Total: $env:TOTAL_DSIZE) :: (Used: $env:INITIAL_DSIZE) (Free: $env:INITIAL_FREEP) --> (Used: $env:FINAL_DSIZE) (Free: $env:FINAL_FREEP)`n"
}
