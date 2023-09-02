- #### Install
> - **Passwordless**
> ```bash
> echo -e "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
> sudo apt-get update -y
> ```
> - **CoreUtils**
> ```bash
> sudo apt-get update -y ; sudo apt-get dist-upgrade -y ; sudo apt-get upgrade -y
> !# May need to run this Twice
> sudo apt install autoconf automake autopoint binutils bison build-essential ca-certificates coreutils curl dos2unix git gcc htop flex file jq moreutils wget -y
> ```
> - **Systemd**
> ```bash
> !# Enable SystemD : https://devblogs.microsoft.com/commandline/systemd-support-is-now-available-in-wsl/
> echo -e "[boot]\nsystemd=true" | sudo tee "/etc/wsl.conf"
> !# Reboot WSL (Run this from Windows Terminal)
> wsl --shutdown
> !# Re Login
> wsl -d debian
> !# Check Status
> sudo systemctl status time-sync.target
> ```
> - [**MiniConda**](https://docs.conda.io/projects/miniconda/en/latest/)
> ```bash
> curl -qfSL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -o /tmp/install_conda.sh && chmod +xwr "/tmp/install_conda.sh" && /tmp/install_conda.sh -b
> !# Check pip
> export PATH="$HOME/miniconda3/bin:$HOME/miniconda3/condabin:$PATH"
> pip install archey4 ; archey
> !# Edit your $HOME/.bashrc | $HOME/.zshrc and add:
> export PATH="$HOME/miniconda3/bin:$HOME/miniconda3/condabin:$PATH"
> ```
- #### Customize (Optional)
```bash

!# Installs broot + fzf + starship + tailscale + tmux + zsh & more
bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/WSL/Debian/customize.sh")
!# Edit your $HOME/.zshrc and update certain things (Example: Username etc)

!# If you only want the binaries then:
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Toolpacks/main/x86_64/eget" -o "/usr/local/bin/eget" && sudo chmod +xwr "/usr/local/bin/eget"
sudo eget "Azathothas/Toolpacks" --asset "toolpack_x86_64.tar.bz2" --all --to "/usr/local/bin" && sudo chmod +xwr /usr/local/bin/*
!# You may need to Remove | Symlink Certain things
!# Example: sudo rm "/usr/local/bin/git" # (As git doesn't work)
!# Reinstall git from apt: sudo apt-get install git
```
