#!/usr/bin/env bash

# Usage: 
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/WSL/Debian/customize.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/WSL/Debian/customize.sh")
#-------------------------------------------------------#
# Install some deps
sudo apt-get update -y ; sudo apt-get dist-upgrade -y ; sudo apt-get upgrade -y
sudo apt install curl dos2unix git htop -y
rm "$HOME/bin/git" >/dev/null 2>&1
#-------------------------------------------------------#
#Get ENV:PATH
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
  if ! [ -d "$HOME/bin" ] ; then
    mkdir -p "$HOME/bin" 
  fi  
    export PATH="$HOME/bin:$PATH"
fi
#Get Dir Ready
if ! [ -d "$HOME/bin" ] ; then
    mkdir -p "$HOME/bin" 
fi
#-------------------------------------------------------#
# Install eget + Bins
#Download eget
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/eget" -o "/usr/local/bin/eget"
sudo chmod +xwr "/usr/local/bin/eget"
#-------------------------------------------------------#
#7z
 sudo eget "https://bin.ajam.dev/x86_64_Linux/7z" --to "/usr/local/bin/7z" 2>/dev/null
 eget eget "https://bin.ajam.dev/x86_64_Linux/7z" --to "$HOME/bin/bin/7z" 2>/dev/null
#Toolpacks
 #Download
 #wget "$(curl -qfsSL "https://api.github.com/repos/Azathothas/Toolpacks/releases" | jq -r '.[] | select(.assets[].name | contains("x86_64")) | .assets[].browser_download_url' | grep -i '.7z$' | sort -u | tail -n 1)" -O "./toolpack_x86_64.7z"
  wget --quiet --show-progress --progress="dot:giga" "https://bin.ajam.dev/x86_64_Linux/_toolpack_x86_64.7z" -O "./toolpack_x86_64.7z"
 #Unpack
  mkdir -p "$HOME/bin" ; 7z e "./toolpack_x86_64.7z" -o"$HOME/bin" -y && rm -rf "$HOME/bin/toolpack_x86_64" 2>/dev/null && rm -rf "./toolpack_x86_64.7z" ; chmod +xwr $HOME/bin/*
#-------------------------------------------------------#
# Del Certain things
sudo rm -rf "$HOME/bin/git" 2>/dev/null
#-------------------------------------------------------#
# Already assume miniconda is installed, if not exit
if [ ! -f "$HOME/miniconda3/bin/conda" ]; then
   echo "miniconda3 is not installed, Install it first"
   echo "Run: "
   echo 'curl -qfsSL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -o /tmp/install_conda.sh && chmod +xwr "/tmp/install_conda.sh" && /tmp/install_conda.sh -b'
   exit 1
else
  export "PATH=$HOME/miniconda3/bin:$HOME/miniconda3/condabin:$PATH"
fi
#-------------------------------------------------------#
# broot + fzf + starship + tmux + zsh
# install broot
"$HOME/miniconda3/bin/conda" install -c conda-forge broot --all -y
# install tmux + zsh
sudo apt install tmux zsh -y
# Install Starship
"$HOME/miniconda3/bin/conda" install -c conda-forge starship --all -y
##Fetch Config files
mkdir -p "$HOME/.config" 
#StarShip: "$HOME/.config/starship.toml"
curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/WSL/Debian/starship.toml" -o "$HOME/.config/starship.toml"
dos2unix --quiet "$HOME/.config/starship.toml" >/dev/null 2>&1
cp "$HOME/.config/starship.toml" "$HOME/.config/starship_conf.toml"
#TMUX: "$HOME/.tmux.conf"
curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/WSL/Debian/.tmux.conf" -o "$HOME/.tmux.conf"
dos2unix --quiet "$HOME/.tmux.conf" >/dev/null 2>&1
tmux source-file "$HOME/.tmux.conf" >/dev/null 2>&1
# $HOME/.zshrc
touch "$HOME/.zsh_history" ; sudo touch "/root/.zsh_history" 
curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/WSL/Debian/.zshrc" -o "$HOME/.zshrc"
dos2unix --quiet "$HOME/.zshrc" >/dev/null 2>&1
#echo 'ZSH_DISABLE_COMPFIX="true"' | sudo tee "/root/.zshrc"
#cat "$HOME/.zshrc" | sed "s|\$HOME|$HOME|g" | sudo tee -a "/root/.zshrc"
# Plugins
# Install tpm plugins
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
   mkdir -p "$HOME/.tmux"
   "/usr/bin/git" clone --filter="blob:none" --quiet "https://github.com/tmux-plugins/tpm" "$HOME/.tmux/plugins/tpm" >/dev/null 2>&1
fi
# Install zsh plugins
mkdir -p "$HOME/.zsh" && pushd "$HOME/.zsh" > /dev/null 2>&1
"/usr/bin/git" clone --filter="blob:none" --quiet "https://github.com/zsh-users/zsh-syntax-highlighting.git" >/dev/null 2>&1
"/usr/bin/git" clone --filter="blob:none" --quiet "https://github.com/zsh-users/zsh-autosuggestions.git" >/dev/null 2>&1
"/usr/bin/git" clone --filter="blob:none" --quiet "https://github.com/marlonrichert/zsh-autocomplete.git" >/dev/null 2>&1
popd > /dev/null 2>&1
# Add zshrc to be loaded from .profile
#echo '[ -f $HOME/bin/zsh ] && exec $HOME/bin/zsh -l' | tee -a "$HOME/.profile"
# change shell
chsh -s "$(which zsh)"
#sudo chsh -s $(which zsh)
# Install & Enable TailScale
curl -qfsSL "https://pkgs.tailscale.com/stable/debian/bookworm.noarmor.gpg" | sudo tee "/usr/share/keyrings/tailscale-archive-keyring.gpg" >/dev/null
curl -qfsSL "https://pkgs.tailscale.com/stable/debian/bookworm.tailscale-keyring.list" | sudo tee "/etc/apt/sources.list.d/tailscale.list"
sudo apt-get update -y
sudo apt-get install tailscale -y
sudo tailscale up
# Source bashrc
source "$HOME/.bashrc"
#EOF
