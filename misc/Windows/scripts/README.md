
---
- #### [Windows Backup](https://github.com/Azathothas/Arsenal/blob/main/misc/Windows/scripts/git_backup_windows.ps1)
> 1. Create a Repo for Windows Backup (Example: `Windows`), **Set it to Private** (Make sure you select **auto creating README.md** or at **least have some contents** on it, else you **won't be able to git clone it**)
> 2. Create a **Github Token** ([`Fine-Grained`](https://github.com/settings/tokens?type=beta) | [`Classic`](https://github.com/settings/tokens)) with at least READ/WRITE Permisson to your Repo. 
> 3. **Upload/Create** a file **`git_backup_windows.ps1`** in your **`Windows`** (Repo Name from step 1)
> 4. Copy Paste [git_backup_windows.ps1](https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Windows/scripts/git_backup_windows.ps1) from this repo to your **`git_backup_windows.ps1`** file.
> 5. **Edit** your **`git_backup_windows.ps1`** to Include your Settings. (**`WINDOWS_BACKUP`** | **`BACKUP_REPO`** | **`GITHUB_USER`** | **`GITHUB_EMAIL`** | **`GITHUB_TOKEN`** etc.)
> 6. **Git Clone** your repo to the **`$env:WINDOWS_BACKUP = "$DRIVE:\PATH\TO\Windows\BACKUP\REPO"`** directory as you specified in your script, on your local pc.
> 7. PowerShell, cd into your Windows Backup (git-cloned) dir and Run:
```powershell
!# Make sure to include the dot `.` at beginning
. ".\git_backup_windows.ps1"
```
---
