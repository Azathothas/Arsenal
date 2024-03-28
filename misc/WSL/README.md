- #### **Install**
```bash
!# ALWAYS INSTALL from Store
https://aka.ms/wslstorepage
!# ALWAYS INSTALL Distros from Store if wants SystemD
# Or use the cli, or Import from: https://github.com/Azathothas/Distropacks/releases/latest
```
- #### **Basics**
```bash
❯ !# Check Status
wsl --status

❯ !# List Officially Available Distros
wsl --list --online

❯ !# List Installed Available Distros
wsl --list

❯ !# List Distros Status
wsl --list --verbose

❯ !# List Only Online/Running Distros
wsl --list --running

> !# Install an Official Distro
wsl --install "$DISTRO_NAME"
# Example: Install Debian --> wsl --install Debian

!# Login after Install
wsl -d "$DISTRO_NAME"

❯ !# Set a default dstro (Auto Selects & Boots into that Distro without havinng to use -d "$DISTRO_NAME"
wsl --set-default "$DISTRO_NAME"

> !# Shutdown/Terminate A Distro
wsl --terminate "$DISTRO_NAME"

> !# Shutdown ALL Distros
wsl --shutdown

> !# Uninstall A Distro
wsl --unregister "$DISTRO_NAME"
```
---
- #### **Custom**
```bash
> !# List Third-Part Installable Distros (https://github.com/mvaisakh/wsl-distro-tars)
# Bash
curl -qfsSL "https://raw.githubusercontent.com/mvaisakh/wsl-distro-tars/main/wsl-tar-gen.sh" | awk '/DISTROS=/{getline; while ($0 !~ /\)/) { gsub(/"/, ""); print; getline }}'
# PowerShell
Read --> https://github.com/mvaisakh/wsl-distro-tars

> !# Install/Import a distro from a tar
# Ref: https://endjin.com/blog/2021/11/setting-up-multiple-wsl-distribution-instances
# <new distribution name> --> Any name you want to give
# <Install Location> --> Where should it be installed, Full Path Needed
# <export file name> --> Downloaded $DISTRO.tar file
wsl --import <new distribution name> <install location> <export file name>
#Example Install a Debian Distro named "Debian-Dev" at "C:\WSL2_Distros" using a downloaded tar "C:\Users\AjamX\Downloads\debian-181020231259.tar"
!# Create Install Dir
mkdir -p "$env:SystemDrive/WSL2_Distros"
!# Can also use file explorer and copy as path
!# Get RealPath
(Resolve-Path -Path "$env:SystemDrive\WSL2_Distros").Path
!# Finally Install
wsl --import "Debian-Dev" "C:\WSL2_Distros" "C:\Users\AjamX\Downloads\debian-181020231259.tar"
!# Login after Install
wsl -d "Debian-Dev"

> !# Start a distro with $USERNAME (The $USERNAME must have been preconfigured and should exist)
wsl -d "$DISTRO_NAME" -u "$USERNAME"

> !# Set a default user for login
sudo tee -a "/etc/wsl.conf" <<EOF
[user]
default=your_username
EOF
```
---
- #### **Advanced**
```bash
> !# Powershell: Use VS Code to edit the wslconfig
code "$env:USERPROFILE\.wslconfig"

---EXAMPLE-ONLY---
#Example: https://learn.microsoft.com/en-us/windows/wsl/wsl-config#example-wslconfig-file
# Settings apply across all Linux distros running on WSL 2
[wsl2]

# Limits VM memory to use no more than 4 GB, this can be set as whole numbers using GB or MB
#memory=4GB 

# Sets the VM to use two virtual processors
#processors=2

# Specify a custom Linux kernel to use with your installed distros. The default kernel used can be found at https://github.com/microsoft/WSL2-Linux-Kernel
#kernel=C:\\temp\\myCustomKernel

# Sets additional kernel parameters, in this case enabling older Linux base images such as Centos 6
#kernelCommandLine = vsyscall=emulate

# Sets amount of swap storage space to 8GB, default is 25% of available RAM
#swap=8GB

# Sets swapfile path location, default is %USERPROFILE%\AppData\Local\Temp\swap.vhdx
#swapfile=C:\\temp\\wsl-swap.vhdx

# Disable page reporting so WSL retains all allocated memory claimed from Windows and releases none back when free
#pageReporting=false

# Turn off default connection to bind WSL 2 localhost to Windows localhost
# This is Required for OpenVPN
localhostforwarding=true

# Disables nested virtualization
#nestedVirtualization=false

# Turns on output console showing contents of dmesg when opening a WSL 2 distro for debugging
#debugConsole=true

# Enable experimental features
#[experimental]
#sparseVhd=true
```
---
- #### Misc
> - [wslutilities/wslu](https://github.com/wslutilities/wslu)
> ```bash
> !# Install
>  curl -qfsSL "https://raw.githubusercontent.com/wslutilities/wslu/master/extras/scripts/wslu-install" | bash
>
> !# Usage: https://wslutiliti.es/wslu/
> ```
