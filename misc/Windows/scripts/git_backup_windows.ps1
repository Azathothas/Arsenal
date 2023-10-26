#-----------------------------------------------------------------------------------------------#
# This should work in most setups, but if it doesn't it will silently continue
# If it shows errors, this means your setup is way too different and you probably need to rewrte lots of this.
# Chat-GPT is surprisingly competent in writing/suggesting PowerShell Fixes.
# To run: Open in Powershell (7 or later) (Yes that dot at beginning is necessary)
# . /path/to/this/ps1/script/after/you/have/edited/and/put/your/own/env/vars/below
# Example: . ".\git-push-Windows.ps1"
# Recommended Runs would be maybe once a week

#-----------------------------------------------------------------------------------------------#
# Set environment variables
# Where to Store the Backup Folder/Github Repo
$env:WINDOWS_BACKUP = "D:\Parrot-Nexus\Windows"
# Your Username/RepoName (Case Sensitive)
$env:BACKUP_REPO = "Azathothas/Windows"
# Your Github Username (Case Sensitive)
$env:GITHUB_USER = "Azathothas"
# Your Github Email (Case Sensitive)
$env:GITHUB_EMAIL = "AjamXYZ101@gmail.com"
# Your GH Token (At least with READ/WRITE Perms to your backup Repo)
$env:GITHUB_TOKEN = "ghp_xxxxxxxxxyyyyyyyyyyyyyzzzzzzzzzzzzz"
# WSL Backup, Comment if don't care
# Distro name: wsl --list -v
$env:WSL_DISTRO = "Debian"
# $HOME Folder containing dotfiles etc: echo $HOME
$env:WSL_USER_HOME = "\home\ajam"
#-----------------------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------------------#
######### Dependency checks #########
# Go-lang is only necessary for installing anew
if (-not (Get-Command go -ErrorAction SilentlyContinue)) {
    Write-Host "Golang is not installed. Please install it using Winget-UI"
    # Or Use Static Binary from: https://github.com/tomnomnom/anew/releases
    # Invoke-WebRequest -Uri "https://github.com/tomnomnom/anew/releases/download/v0.1.1/anew-windows-amd64-0.1.1.zip" -OutFile "$env:TEMP\anew.zip" ; Expand-Archive -Path "$env:TEMP\anew.zip" -DestinationPath "$env:TEMP"; Move-Item -Path "$env:TEMP/anew.exe" -Destination "$env:SystemDrive/Program Files/anew.exe"
    # If you get access denied, manually move: $env:TEMP/anew.exe to $env:SystemDrive/Program Files/anew.exe
    exit 1
}
# Check if Anew (https://github.com/tomnomnom/anew) is installed
# anew is used to keep track/manage of your gitignore so you don't end up committing files > 100 MB
if (-not (Get-Command anew -ErrorAction SilentlyContinue)) {
    Write-Host "Anew is not installed. Installing it now..."
    $installResult = (& go install -v github.com/tomnomnom/anew@latest 2>&1)
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Anew was installed successfully."
    } else {
        Write-Host "Installation of Anew failed: $installResult"
        exit 1
    }
} else {
    Write-Host ""
}
# Set working directory
New-Item -Path "$env:WINDOWS_BACKUP" -ItemType Directory -ErrorAction SilentlyContinue
Set-Location $env:WINDOWS_BACKUP
# Set Git config
git config --global user.name "$env:GITHUB_USER"
git config --global user.email "$env:GITHUB_EMAIL"
# Mark Safe
git config --global --add safe.directory "$env:WINDOWS_BACKUP"
# Set Repo
git remote set-url origin "https://$env:GITHUB_USER:$env:GITHUB_TOKEN@github.com/$env:BACKUP_REPO.git"
# Check if WINDOWS_BACKUP is set
if (-not $env:WINDOWS_BACKUP) {
  Write-Host "No Backup Directory for Windows"
  Exit 1
}
# Check if WINDOWS_BACKUP directory exists
if (!(Test-Path $env:WINDOWS_BACKUP -PathType Container)) {
    Write-Host "Directory $env:WINDOWS_BACKUP doesn't exist. Exiting."
    Exit 1
}
#-----------------------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------------------#
######### Configure subdirectories #########
Write-Host "➼ Configuring Subdirectories (Windows)"
mkdir "$env:WINDOWS_BACKUP\C\Preferences" -ErrorAction SilentlyContinue
mkdir "$env:WINDOWS_BACKUP\C\ProgramData" -ErrorAction SilentlyContinue 
mkdir "$env:WINDOWS_BACKUP\C\Program Files" -ErrorAction SilentlyContinue 
mkdir "$env:WINDOWS_BACKUP\C\Tools" -ErrorAction SilentlyContinue 
mkdir "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\.config" -ErrorAction SilentlyContinue
mkdir "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\.ssh" -ErrorAction SilentlyContinue
mkdir "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\.vscode" -ErrorAction SilentlyContinue
mkdir "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -ErrorAction SilentlyContinue
#mkdir "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine" -ErrorAction SilentlyContinue
mkdir "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\scoop\apps\gitea\current\custom\conf" -ErrorAction SilentlyContinue
#Change Drive letters, if yours differ. Example Your Documents is at C: Instead of D etc
mkdir "$env:WINDOWS_BACKUP\D\Documents" -ErrorAction SilentlyContinue
Write-Host
#-----------------------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------------------#
######### Windows #########
# Comment lines for things you don't have/don't want backed up
# Or Add new entries for things you want backed up but aren't listed here
# Copy new files for $env:USERNAME
Write-Host "➼ Copying new Files for $env:USERNAME (Windows)"
#I Have things like theme,icons etc here
Copy-Item "C:\Preferences" "$env:WINDOWS_BACKUP\C" -Recurse -Force -ErrorAction SilentlyContinue
#JellyFin
Copy-Item "$env:SystemDrive/ProgramData/Jellyfin" "$env:WINDOWS_BACKUP\C" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "$env:SystemDrive/Program Files/Jellyfin" "$env:WINDOWS_BACKUP\C" -Recurse -Force -ErrorAction SilentlyContinue
#I have misc Tools Here
Copy-Item "C:\Tools" "$env:WINDOWS_BACKUP\C" -Recurse -Force -ErrorAction SilentlyContinue
#Main Config Files
Copy-Item "$env:USERPROFILE\.config" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "$env:USERPROFILE\.ssh" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "$env:USERPROFILE\.vscode" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME" -Recurse -Force -ErrorAction SilentlyContinue
#BurpSuite
Copy-Item "$env:USERPROFILE\AppData\Roaming\BurpSuite" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#Caido
Copy-Item "$env:USERPROFILE\AppData\Roaming\caido" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#VsCode
Copy-Item "$env:USERPROFILE\AppData\Roaming\Code" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#gCloud
Copy-Item "$env:USERPROFILE\AppData\Roaming\gcloud" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#GH cli
Copy-Item "$env:USERPROFILE\AppData\Roaming\GitHub CLI" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#HTTPie
Copy-Item "$env:USERPROFILE\AppData\Roaming\HTTPie" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#Insomnia : https://github.com/Kong/insomnia
Copy-Item "$env:USERPROFILE\AppData\Roaming\Insomnia" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#Kopia : https://github.com/kopia/kopia
Copy-Item "$env:USERPROFILE\AppData\Roaming\kopia" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "$env:USERPROFILE\AppData\Roaming\kopia-ui" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#Windows
Copy-Item "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#rclone config files
Copy-Item "$env:USERPROFILE\AppData\Roaming\rclone" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\AppData\Roaming" -Recurse -Force -ErrorAction SilentlyContinue
#gitea
Copy-Item "$env:USERPROFILE\scoop\apps\gitea\current\custom\conf\app.ini" "$env:WINDOWS_BACKUP\C\Users\$env:USERNAME\scoop\apps\gitea\current\custom\conf" -Recurse -Force -ErrorAction SilentlyContinue
#Change Drive letters, if yours differ. Example Your Documents is at C: Instead of D etc
Copy-Item "D:\Documents\PowerShell" "$env:WINDOWS_BACKUP\D\Documents" -Recurse -Force -ErrorAction SilentlyContinue
#LG OnScreen Controller Config
Copy-Item "D:\Documents\OnScreen Control" "$env:WINDOWS_BACKUP\D\Documents" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host
#-----------------------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------------------#
#Comment This Section if you don't want to backup/don't have WSL
######### WSL2 #########
# Configure subdirectories (WSL) 
Write-Host "➼ Configuring Subdirectories ($env:WSL_DISTRO\$env:WSL_USER_HOME)"
mkdir "$env:WINDOWS_BACKUP\WSL\$env:WSL_DISTRO\$env:WSL_USER_HOME\.config" -ErrorAction SilentlyContinue
Write-Host
# Copy new files for $env:USERNAME
Write-Host "➼ Copying new Files for $env:USERNAME (WSL)"
#Config files
Copy-Item "\\wsl.localhost\$env:WSL_DISTRO\$env:WSL_USER_HOME\.config" "$env:WINDOWS_BACKUP\WSL\$env:WSL_DISTRO\$env:WSL_USER_HOME" -Recurse -Force -ErrorAction SilentlyContinue
#DotFiles
Copy-Item "\\wsl.localhost\$env:WSL_DISTRO\$env:WSL_USER_HOME\.ssh" "$env:WINDOWS_BACKUP\WSL\$env:WSL_DISTRO\$env:WSL_USER_HOME" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "\\wsl.localhost\$env:WSL_DISTRO\$env:WSL_USER_HOME\.bashrc" "$env:WINDOWS_BACKUP\WSL\$env:WSL_DISTRO\$env:WSL_USER_HOME" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "\\wsl.localhost\$env:WSL_DISTRO\$env:WSL_USER_HOME\.bash_history" "$env:WINDOWS_BACKUP\WSL\$env:WSL_DISTRO\$env:WSL_USER_HOME" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "\\wsl.localhost\$env:WSL_DISTRO\$env:WSL_USER_HOME\.zshrc" "$env:WINDOWS_BACKUP\WSL\$env:WSL_DISTRO\$env:WSL_USER_HOME" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "\\wsl.localhost\$env:WSL_DISTRO\$env:WSL_USER_HOME\.zsh_history" "$env:WINDOWS_BACKUP\WSL\$env:WSL_DISTRO\$env:WSL_USER_HOME" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host
#-----------------------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------------------#
######### Git Push #########
#Mark Safe
Set-Location $env:WINDOWS_BACKUP
Write-Host "➼ Syncing to Git at $(git remote show)"
git config --global --add safe.directory $env:WINDOWS_BACKUP
Write-Host
#Add > 90MB to .gitignore
Write-Host "➼ Adding Large Files to .gitignore"
Get-ChildItem -Path $env:WINDOWS_BACKUP -Recurse -File | Where-Object { $_.Length -gt 90MB } | Select-Object -ExpandProperty FullName | ForEach-Object {$_ -replace "^$([Regex]::Escape($env:WINDOWS_BACKUP))\\" } | anew $env:WINDOWS_BACKUP\.gitignore
#Replace `\` with `/` 
(Get-Content -Path .\.gitignore) -replace '\\', '/' | Set-Content -Path .\.gitignore
#Push .gitignore tp origin
Write-Host
Set-Location $env:WINDOWS_BACKUP
git add $env:WINDOWS_BACKUP\.gitignore
git commit -m "Ignore large files"
git push --force -u origin main
Write-Host
#Add CurrentSys Info
echo "` $(systeminfo | Select-String -Pattern 'OS Name','OS Version','System Type' -SimpleMatch | ForEach-Object { $_.Line.Trim() })`"" > README.md
#Main git functions
Set-Location $env:WINDOWS_BACKUP
if (git status --porcelain) {
    # If there are local changes, commit them and push to the remote repository
    Set-Location $env:WINDOWS_BACKUP
    git add --all --verbose; git commit -m "Windows [Git-Push]"
    git push --force -u origin main
    Write-Host "Pushed changes to the remote repository."
}
else {
    # If there are no local changes, check for new changes in the remote repository
    git fetch origin
    # Check if there are any changes to merge
    if (git rev-list HEAD..origin/main --count -gt 0) {
        # If there are changes to merge, pull them and create a merge commit
        Set-Location $env:WINDOWS_BACKUP
        git pull origin main
        git commit -m "Merge remote changes"
        git push --force -u origin main
        Write-Host "Merged remote changes and pushed to the remote repository."
    }
    else {
        # If there are no changes to merge, output a message
        Write-Host "No changes to pull or push."
    }
}
#-----------------------------------------------------------------------------------------------#
#Clear-Host
#EOF
