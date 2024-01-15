- #### Setup
> - **Passwordless**
 ```bash
 echo -e "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee -a "/etc/sudoers"
 sudo apt-get update -y
 ```
> - **CoreUtils**
 ```bash
 sudo apt-get update -y ; sudo apt-get dist-upgrade -y ; sudo apt-get upgrade -y
 !# May need to run this Twice
 sudo apt install autoconf automake autopoint binutils bison build-essential ca-certificates coreutils curl dos2unix git gcc htop flex file jq moreutils wget -y
 !# Networking
 sudo apt-get install dnsutils 'inetutils*' net-tools netcat-traditional -y
 sudo apt-get install 'iputils*' -y
 !# Fix Perms for ping
 sudo setcap cap_net_raw+ep "$(which ping)"
 ```
> - **IP Forwarding**
```bash
 echo 'net.ipv4.ip_forward = 1' | sudo tee -a "/etc/sysctl.conf"
 echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a "/etc/sysctl.conf"
 sudo sysctl -p "/etc/sysctl.conf"
```
> - **ufw Firewall**
```bash
!# Install ufw
sudo apt-get -y install ufw

!# Enable ufw
sudo ufw enable && sudo ufw status

!# Check Rules
sudo ufw status numbered

!# Add new rules
# Example: Allow 7330/7331/7332 Ports
sudo ufw allow 7330/tcp
sudo ufw allow out 7330/tcp
sudo ufw allow 7330/udp
sudo ufw allow out 7330/udp
sudo ufw allow 7331/tcp
sudo ufw allow out 7331/tcp
sudo ufw allow 7331/udp
sudo ufw allow out 7331/udp
sudo ufw allow 7332/tcp
sudo ufw allow out 7332/tcp
sudo ufw allow 7332/udp
sudo ufw allow out 7332/udp
!# Recheck
sudo ufw reload
sudo ufw status numbered
```
> - **Systemd**
 ```bash
 !# Enable SystemD : https://devblogs.microsoft.com/commandline/systemd-support-is-now-available-in-wsl/
 echo -e "[boot]\nsystemd=true" | sudo tee "/etc/wsl.conf"
 !# Reboot WSL (Run this from Windows Terminal)
 wsl --shutdown
 !# Install Core
 sudo apt-get -y install systemd systemd-resolved
 !# Reboot WSL Again (Run this from Windows Terminal)
 wsl --shutdown
 !# Re Login
 wsl -d debian
 !# Check Status
 sudo systemctl status time-sync.target
 ```
---
- #### Install Addons & Utils
- ##### [**Static-Bins**](https://github.com/Azathothas/Toolpacks) (Essential)
 ```bash
 !# SKIP THIS IF YOU INTEND TO ALSO RUN THE CUSTOMIZE SCRIPT (BELOW)
!# eget & 7z (DEPS)
 sudo curl -qfsSL "https://bin.prashansa.com.np/x86_64_Linux/eget" -o "/usr/local/bin/eget" && sudo chmod +xwr "/usr/local/bin/eget"
 sudo eget "https://bin.prashansa.com.np/x86_64_Linux/7z" --to "/usr/local/bin/7z"
!# Toolpacks (>500 Tools)
  #wget "$(curl -qfsSL "https://api.github.com/repos/Azathothas/Toolpacks/releases" | jq -r '.[] | select(.assets[].name | contains("x86_64")) | .assets[].browser_download_url' | grep -i '.7z$' | sort -u | tail -n 1)" -O "./toolpack_x86_64.7z"
  wget --quiet --show-progress --progress="dot:giga" "https://bin.prashansa.com.np/x86_64_Linux/_toolpack_x86_64.7z" -O "./toolpack_x86_64.7z"
  mkdir -p "$HOME/bin" ; 7z e "./toolpack_x86_64.7z" -o"$HOME/bin" -y && rm -rf "$HOME/bin/toolpack_x86_64" 2>/dev/null && rm -rf "./toolpack_x86_64.7z" ; chmod +xwr $HOME/bin/*
 !# You may need to Remove | Symlink Certain things
 !# Example: sudo rm "/usr/local/bin/git" # (As git doesn't work)
 !# Reinstall git from apt: sudo apt-get install git
 ```
 - ##### [Python (**MiniConda**)](https://docs.conda.io/projects/miniconda/en/latest/) (Essential)
 ```bash
 curl -qfSL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -o /tmp/install_conda.sh && chmod +xwr "/tmp/install_conda.sh" && /tmp/install_conda.sh -b
 !# Check pip
 export PATH="$HOME/miniconda3/bin:$HOME/miniconda3/condabin:$PATH"
 pip install archey4 ; archey
 !# Edit your $HOME/.bashrc | $HOME/.zshrc and add:
 export PATH="$HOME/miniconda3/bin:$HOME/miniconda3/condabin:$PATH"
 ```
- ##### Install [**Crystal**](https://crystal-lang.org/install/on_ubuntu/) (Optional)
 ```bash
  curl -qfsSL "https://crystal-lang.org/install.sh" | sudo bash
 ```
- ##### Install [**Golang**](https://github.com/kerolloz/go-installer) (Optional)
 ```bash
 !# Install
  bash <(curl -qfsSL "https://git.io/go-installer")
 !# Delete Junk
  rm $HOME/go*.gz
 !# Export PATH (Or simply relogin)
  export PATH=$HOME/.go/bin:$PATH
  export PATH=$HOME/go/bin:$PATH
 ```
- ##### Install [**Rust**](https://www.rust-lang.org/tools/install) (Optional)
 ```bash
 !# Install
  bash <(curl -qfsSL "https://sh.rustup.rs") -y 
 !# Export PATH (Or simply relogin)
  export PATH=$HOME/.cargo/bin:$PATH
  export PATH=$HOME/.cargo/env:$PATH
 ```
- ##### Install [**Ziglang**](https://ziglang.org/learn/getting-started/) (Optional)
 ```bash
 !# Install
  pushd "$(mktemp -d)" && curl -qfSLJO $(curl -qfsSL "https://ziglang.org/download/index.json" | jq -r '.master | ."x86_64-linux".tarball')
  find . -type f -name '*.tar*' -exec tar -xvf {} \; && sudo mkdir -p "/usr/local/zig" && sudo mv "$(find . -maxdepth 1 -type d | grep -v '^.$')"/* "/usr/local/zig" ; popd
  !# Add this to $HOME/.bashrc | $HOME/.zshrc
  export PATH="/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"
 ```
---
- #### [**Customize**](https://github.com/Azathothas/Arsenal/blob/main/misc/WSL/Debian/customize.sh) (Optional)
```bash
!# Installs broot + fzf + starship + tailscale + tmux + zsh & more
bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/WSL/Debian/customize.sh")
!# If that doesn't work then:
wget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/WSL/Debian/customize.sh" && dos2unix "./customize.sh" && chmod +xwr "./customize.sh"
!# Edit your $HOME/.zshrc and update certain things (Example: Username etc)
!# Also add the miniconda path
```
 ```bash
 !# Final PATH in $HOME/.bashrc || $HOME/.zshrc
 #PATHS (Only Required)
 export GOROOT="$HOME/.go"
 export GOPATH="$HOME/go"
 export PATH="$HOME/bin:$HOME/.cargo/bin:$HOME/.cargo/env:$GOROOT/bin:$GOPATH/bin:$HOME/miniconda3/bin:$HOME/miniconda3/condabin:/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"
 ```
---
