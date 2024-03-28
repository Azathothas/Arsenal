- #### [Download Termux](https://github.com/termux/termux-app)
```bash
!# Latest Stable
https://github.com/termux/termux-app/releases/latest

!# Latest Debug Build
https://github.com/termux/termux-app/actions/workflows/debug_build.yml >> Artifacts

!# To get System Architecture
ADB: adb shell getprop ro.product.cpu.abi
APP: https://github.com/kamgurgul/cpu-info
```
---
- #### Setup
```bash
#Ref: https://wiki.termux.com/wiki/Remote_Access
#ENVS (for Reference ONLY)
#PREFIX: /data/data/com.termux/files/usr [$PREFIX]
#ROOT=/data/data/com.termux/
#HOME=/data/data/com.termux/files/home [ $HOME ]
#Bin=/data/data/com.termux/files/usr/bin/ [ /data/data/com.termux/files/usr/bin/ ]

#---------------------------------------------------------------------------------------#
1. !#Update Packages to Latest & Install/Update Termux Base [REQUIRED]
pkg update -y && pkg upgrade -y && pkg autoclean -y 
pkg install termux-api termux-tools -y
#---------------------------------------------------------------------------------------#

#---------------------------------------------------------------------------------------#
2. !# Install/Enable Services: https://wiki.termux.com/wiki/Termux-services [REQUIRED]
#Doing this essentially installs runit & sv daemon
pkg install termux-services -y
source "$PREFIX/etc/profile.d/start-services.sh"
#Restart termux so service-daemon can start
#---------------------------------------------------------------------------------------#

#---------------------------------------------------------------------------------------#
3. !#Install CoreUtils [REQUIRED]
pkg install 7zip apt autoconf coreutils curl file jq moreutils nano util-linux wget which zip -y
#Install Addons & Misc (Run Twice)
pkg install 7zip apt autoconf bash bash-completion binutils build-essential busybox ca-certificates command-not-found coreutils cpufetch croc daemonize dbus dialog diffutils dnslookup dnstop dnsutils dos2unix dosfstools dpkg duf ed elfutils fcp fd fdisk ffmpeg figlet findutils flac fontconfig-utils fsmon getconf gettext gh git gnutls gzip has hexedit hexyl html2text htop httping inetutils inotify-tools inotify-tools-static iperf3 iperf3-static jq keychain less libarchive libcurl libpcap libssh libssh2 lr lzip lzlib make man manpages micro miniserve minisign mlocate moreutils nano ncdu ncurses neofetch net-tools netcat-openbsd nmap openssh openssl openssl-tool p7zip parallel pkg-config procps procs proot psmisc pv python python-apt python-ensurepip-wheels python-pip python-static qemu-utils rclone readline resolv-conf ripgrep ripgrep-all rw samefile sed slugify socat speedtest-go sshpass sshping stunnel syncthing tar tmux traceroute tree unzip util-linux uuid-utils vtutils wget wget2 which whois wireguard-tools xsltproc xz-utils yq zip -y

#---------------------------------------------------------------------------------------#
4. !# Connect via adb, so it's easier to copy paste [Optional, but RECOMMENDED]
# Get LAN IP (Usually wlan0/Wi-Fi Ip)
# From Termux:
pip install archey4 --upgrade ; archey
# or: pkg install net-tools -y ; sudo arp 
# Using adb shell (Linux/Windows)
adb shell ip addr
# Generate a passwd for sshd (Termux)
passwd
# Run sshd (Termux)
sshd
#Connect (Linux/Windows)
ssh "$LAN_IP" -p "8022"
#---------------------------------------------------------------------------------------#
```
---
- #### [TailScale](https://tailscale.com/kb/1079/install-android) (easy Mode)
```bash
1. !# Install the app: https://play.google.com/store/apps/details?id=com.tailscale.ipn
2. !# Login & Connect

## Pros:
#--> Simple, 1 Click connect, no fiddling with cli and such. Simply open termux acquire wakelock and connect via tailscale, done.
#--> Even after restart, you only have to re-open the app and connect
#--> Using cli if you don't have root access, offers no significant benefits over using the app

## Cons:
#--> If you are root, you won't be able to use TailScale as an elevated system process (No system wide service collection, and performance degradationn)
#--> Depending on what you do this device, it may introduce security problems if you use your main TailScale account, hence use a different one and share the machine if you have to use the APP
```
---
- #### SSH
```bash
!# Due to SELINUX ISSUES: https://github.com/tailscale/tailscale/issues/4908
# Even with getent, the ssh environment will not be perfect
# If you didn't customize: Always SSH using port 8082 (SSHD) instead of TailScale 22
# If you already customized (zsh etc), then you can ssh directly on port 22 (TailScale SSH)
# However, this is still limited, and things will often be broken
# Best would be to login via tailscale ssh, and enable sshd and then logout from tailscale ssh, login to shhd (port 8022) again
# If you have root + magsik : https://github.com/Magisk-Modules-Repo/ssh (Scroll to the QOL APPS & Tips Section)

#Ref: https://joeprevite.com/ssh-termux-from-computer/

1. !# Generate a passwd for sshd (Termux)
passwd

2. !# Enable & Run sshd (Termux)
!# Sane Config
nano -m "$PREFIX/etc/ssh/sshd_config"
#Should look like:
`
PrintMotd yes
PasswordAuthentication yes
X11Forwarding yes
Subsystem sftp /data/data/com.termux/files/usr/libexec/sftp-server
`

#-----------------------------------------------------------------------------------------------------------------------------#
!# Using Service (termux-services | runsv) will keep sshd alive as long as termux app is running in background.
# If termux app is killed for any reason, sshd will die but will auto start as soon as termux app is reopened
# It is safe to remove termux from background, but must acquire WakeLock || disable Battery Optimizations
# As long as you see termux in notification panel with `wake-lock-held`, sshd will remain alive
# There's more ways to keep completely backgrounded, without any session, see the ref's below.
# How :
#     : https://www.reddit.com/r/termux/comments/j9wsby/how_to_keep_termux_constantly_running_in_the/
#     : https://dontkillmyapp.com/
#     : https://shizuku.rikka.app/guide/setup/
#-----------------------------------------------------------------------------------------------------------------------------#
1. !# Manually starting sshd services from tailscale ssh (Need to have started tailscale from a rootshell, else that too will be killed):

#This still requires termux to be running
# ln -s "$PREFIX/usr/bin" "$PREFIX/bin"
# export SVDIR="$PREFIX/usr/var/service/"
# export LOGDIR="$PREFIX/var/log"
# source "/data/data/com.termux/files/usr/etc/profile.d/start-services.sh"

2. !# If you have root + magisk
https://github.com/Magisk-Modules-Repo/ssh

3. !# Simply reopen the termux app
# This assumes we have phyiscal access
#-----------------------------------------------------------------------------------------------------------------------------#

!# Enable SSHD
sv-enable sshd
#Check if running
ps aux | grep sshd

3. !# SSH

# No Customization + No Zsh
ssh "termux@$TAILSCALE_IP_OR_MAGIC_DNS" -p 8082

# Fully Customized + ZSH Installed
# NOT STABLE , specifying the port 8022 is still recommended
ssh "termux@$TAILSCALE_IP_OR_MAGIC_DNS"
```
---
- #### Customize
```bash
1. !#Customize (Zsh + Starship + fzf)
#------------------------------------------------------#
pkg update -y && pkg upgrade -y && pkg autoclean -y 
#Setup base
mkdir -p $HOME/{bin,.config,Tools,tmp,.zsh} >/dev/null 2>&1
#------------------------------------------------------#

2. !#fzf deps
#------------------------------------------------------#
#broot
pkg install broot -y && ln -s "$PREFIX/bin/broot" "$PREFIX/bin/br"
#batcat
pkg install bat -y && ln -s "$PREFIX/bin/bat" "$PREFIX/bin/batcat"
#fd find
pkg install fd -y && ln -s "$PREFIX/bin/fd" "$PREFIX/bin//fdfind"
#fzf
pkg install fzf -y
  #if [ ! -d "$HOME/.fzf" ]; then
    git clone --filter="blob:none" --quiet "https://github.com/junegunn/fzf.git" "$HOME/.fzf" >/dev/null 2>&1
    "$HOME/.fzf/install" --all >/dev/null 2>&1
  #fi
#------------------------------------------------------#

3. !#Tmux
#------------------------------------------------------#
pkg install tmux -y
#Tmux Plugins
#if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
   mkdir -p "$HOME/.tmux"
   git clone --filter="blob:none" --quiet "https://github.com/tmux-plugins/tpm" "$HOME/.tmux/plugins/tpm" >/dev/null 2>&1
#fi
#------------------------------------------------------#

4. !#zsh configs
#------------------------------------------------------#
#.zshrc
pkg install zsh -y
pkg install zsh-completions -y
touch "$HOME/.zsh_history"
#Plugins
mkdir -p "$HOME/.zsh" && cd "$HOME/.zsh"
git clone --filter="blob:none" --quiet "https://github.com/zsh-users/zsh-syntax-highlighting.git" >/dev/null 2>&1
git clone --filter="blob:none" --quiet "https://github.com/zsh-users/zsh-autosuggestions.git" >/dev/null 2>&1
git clone --filter="blob:none" --quiet "https://github.com/marlonrichert/zsh-autocomplete.git" >/dev/null 2>&1
#------------------------------------------------------#

5. !#Starship
#------------------------------------------------------#
pkg install starship -y
#------------------------------------------------------#

6. !#Termux Style
#------------------------------------------------------#
cd "$HOME" && git clone --filter="blob:none" --quiet "https://github.com/adi1090x/termux-style"
cd "$HOME/termux-style" && bash "$HOME/termux-style/install"
!# Run inside termux, not from other terminal
termux-style
#Choose, mine (these may have changed):
Color = (80) (neon)
Font = (3) (DejaVu)
#------------------------------------------------------#

7. !# Change SHELL & Finish
#------------------------------------------------------#
chsh -s zsh
#Remove Termux Welcome Screen
rm "/data/data/com.termux/files/usr/etc/motd"
#Setup broot (Say: Yes Y)
broot
#Fetch zshrc
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Android/Termux/.zshrc" -o "$HOME/.zshrc"
dos2unix --quiet "$HOME/.zshrc"
#Souce/Reload
source "$HOME/.zshrc"
#------------------------------------------------------#

#------------------------------------------------------#
!#Install Programming langs [Optional]
pkg install golang -y
pkg install rust -y
#------------------------------------------------------#
```
---
- #### PKG Management
```bash
!# View Current Termux Stats & Info
termux-info

!# Ref: https://wiki.termux.com/wiki/Package_Management

!# A list of all available pkgs you can install:
https://github.com/Azathothas/Toolpacks/tree/main/Info/Packages/Termux

!# Always use pkg instead of apt
!# If you use apt, you will end up with broken apps, file perms etc. (SELinux)

❯ PKGs
!# Install package(s):
pkg install "$PKG_NAME"
!# Update and upgrade packages:
pkg update "$PKG_NAME"
!# Remove/Uninstall Package(s):
pkg uninstall "$PKG_NAME"
!# List files 'owned' by package:
pkg file "$PKG_NAME"
!# Reinstall a Package(s):
pkg reinstall "$PKG_NAME"
!# Show some info about package(s):
pkg show "$PKG_NAME"
!# Search package(s):
pkg search "$PKG_NAME" || "$REGEX"
!# List all packages:
pkg list-all
!# List all installed packages:
pkg list-installed

❯ Repos
!# Some Packages are only available in certain repos, for example root-packages are available only to root users
!# game-packages : 
pkg update -y && pkg upgrade -y && pkg autoclean -y 
pkg install game-repo ; pkg update -y && pkg upgrade -y && pkg autoclean -y 

!# science-packages : 
pkg update -y && pkg upgrade -y && pkg autoclean -y 
pkg install science-repo ; pkg update -y && pkg upgrade -y && pkg autoclean -y 

!# termux-root-packages ROOT-ONLY : https://github.com/termux/termux-packages/tree/master/root-packages
pkg update -y && pkg upgrade -y && pkg autoclean -y 
pkg install root-repo ; pkg update -y && pkg upgrade -y && pkg autoclean -y 

!# x11-packages (Android 7+) NOT-STABLE : https://github.com/termux/termux-packages/tree/master/x11-packages
pkg update -y && pkg upgrade -y && pkg autoclean -y 
pkg install x11-repo ; pkg update -y && pkg upgrade -y && pkg autoclean -y
```
- #### Additional Packages & Tools
> - https://github.com/Azathothas/Termux-Packages
> - https://bin.ajam.dev/arm64_v8a_Android/
---
- #### [PROOT](https://github.com/proot-me/proot)
> ```bash
> ❯ !# Install
> pkg update -y && pkg upgrade -y && pkg autoclean -y 
> pkg install proot proot-distro -y
> 
> ❯ !# Basics
> !# List all available distros
> proot-distro list
> !# Install a distro
> proot-distro install "$DISTRO_ALIAS_NAME"
> !# Login & TTY into a distro
> proot-distro login "$DISTRO_ALIAS_NAME"
> 
> ❯ !# Ops
> !# Backup a Distro
> proot-distro backup "$DISTRO_ALIAS_NAME"
> !# Factory Reset a Distro
> proot-distro reset "$DISTRO_ALIAS_NAME"
> !# Delete a Distro
> proot-distro remove "$DISTRO_ALIAS_NAME"
> !# Restore from Backup
> proot-distro restore "$DISTRO_ALIAS_NAME"
> ```
> > ---
> > - Alpine
> >
> > ![Untitled](https://github.com/Azathothas/Arsenal/assets/58171889/bd735ae9-cb47-42d6-9e89-4eb391d74e13)
> >
> > ```bash
> > !# Install base, to try smth complicated: https://github.com/Yonle/alpine-proot
> > # --override-alias --> give a new name after install
> > pkg update -y && pkg upgrade -y && pkg autoclean -y 
> > pkg install proot proot-distro -y
> > proot-distro install "alpine" --override-alias "alpine-xootd"
> > 
> > !# Login
> > # Usage: proot-distro login [OPTIONS] [DISTRO ALIAS] [-- [COMMAND]]
> > # --user [user]     --> Login as specified user instead of 'root'.
> > # --fix-low-ports   --> Modify bindings to protected ports to use a higher port number.
> > # --isolated        --> Run isolated environment without access to host file system. (Not Recommended)
> > # --termux-home     --> Mount Termux home directory to /root. Takes priority over '--isolated' option.
> > # --shared-tmp      --> Mount Termux temp directory to /tmp. Takes priority over '--isolated' option.
> > # --no-kill-on-exit --> Wait until all running processes will finish before exiting. This will cause proot to freeze if you are running daemons.
> > proot-distro login --fix-low-ports "alpine-xootd"
> > 
> > !# CoreUtils
> > # $HOME --> /root
> > # Binaries --> /bin
> > apk update ; apk add binutils build-base coreutils gcc git linux-headers mlocate moreutils musl musl-utils patchelf pkgconfig python3-dev py3-pip pipx tar tzdata ufw util-linux 
> > apk add bind-tools lm-sensors pciutils procps py3-distro py3-netifaces sysfsutils virt-what
> > 
> > !#fetch
> > pipx install archey4 ; pipx ensurepath ; clear
> > archey 2>/dev/null
> > 
> > !# DateTime
> > ln -sf "/usr/share/zoneinfo/Asia/Kathmandu" "/etc/localtime"
> > echo "Asia/Kathmandu" > "/etc/timezone"
> > #check
> > date
> > ```
> > ---
> > - Debian
> > 
> > ![Untitled](https://github.com/Azathothas/Arsenal/assets/58171889/e40ec227-1590-45c7-8f4c-01d9015ec4b2)
> >
> > ```bash
> > !# Install base
> > # --override-alias --> give a new name after install
> > pkg update -y && pkg upgrade -y && pkg autoclean -y 
> > pkg install proot proot-distro -y
> > proot-distro install "debian" --override-alias "debian-xootd"
> > 
> > !# Login
> > # Usage: proot-distro login [OPTIONS] [DISTRO ALIAS] [-- [COMMAND]]
> > # --user [user]     --> Login as specified user instead of 'root'.
> > # --fix-low-ports   --> Modify bindings to protected ports to use a higher port number.
> > # --isolated        --> Run isolated environment without access to host file system. (Not Recommended)
> > # --termux-home     --> Mount Termux home directory to /root. Takes priority over '--isolated' option.
> > # --shared-tmp      --> Mount Termux temp directory to /tmp. Takes priority over '--isolated' option.
> > # --no-kill-on-exit --> Wait until all running processes will finish before exiting. This will cause proot to freeze if you are running daemons.
> > proot-distro login --fix-low-ports "debian-xootd"
> > 
> > !# CoreUtils
> > # $HOME --> /root
> > # Binaries --> /bin
> > apt-get update -y ; apt-get dist-upgrade -y ; apt-get upgrade -y
> > !# May need to run this Twice
> > apt install autoconf automake autopoint binutils bison build-essential ca-certificates coreutils curl dos2unix git gcc htop flex file jq moreutils wget -y
> > !# Networking
> > apt-get install dnsutils 'inetutils*' net-tools netcat-traditional -y
> > apt-get install 'iputils*' -y
> > !# Sensors
> > apt install lm-sensors pciutils procps python3-distro python3-netifaces sysfsutils virt-what -y
> > !# Fix Perms for ping
> > setcap cap_net_raw+ep "$(which ping)"
> > 
> > !#fetch
> > apt install cpufetch neofetch -y
> > pip install pipx --upgrade
> > pipx install archey4 ; pipx ensurepath ; clear
> > archey 2>/dev/null ; echo ; neofetch
> > ```
