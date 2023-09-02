#!/usr/bin/env bash

# Usage: 
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Utils/main/Scripts/WSL/Debian/customize.sh")

# Install some deps
sudo apt-get update -y ; sudo apt-get dist-upgrade -y ; sudo apt-get upgrade -y
sudo apt install curl dos2unix git htop -y
rm "$HOME/bin/git" >/dev/null 2>&1
# Install eget + Bins
mkdir -p $HOME/bin && pushd $HOME/bin ; curl -qfsSL "https://zyedidia.github.io/eget.sh" | bash ; "./eget" "Azathothas/Utils" --asset "toolpack_x86_64.tar.bz2" --all --to "$HOME/bin" ; popd 
export "PATH=$HOME/bin:$PATH"
# Symlink Certain things
ln -s "$HOME/bin/bat" "$HOME/bin/batcat" ; ln -s "$HOME/bin/fd" "$HOME/bin/fdfind" ; ln -s "$HOME/bin/fd" "$HOME/bin/fd-find" ; ln -s "$HOME/bin/gfx" "$HOME/bin/gf" ; ln -s "$HOME/bin/hxn" "$HOME/bin/haylxon" ; ln -s "$HOME/bin/ripgrep" "$HOME/bin/rg" ; ln -s "$HOME/bin/zoxide" "$HOME/bin/z" 
# Already assume miniconda is installed, if not exit
if [ ! -f "$HOME/miniconda3/bin/conda" ]; then
   echo "miniconda3 is not installed, Install it first"
   echo "Run: "
   echo 'curl -qfSL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -o /tmp/install_conda.sh && chmod +xwr "/tmp/install_conda.sh" && /tmp/install_conda.sh -b'
   exit 1
else
  export "PATH=$HOME/miniconda3/bin:$HOME/miniconda3/condabin:$PATH"
fi
# broot + fzf + starship + tmux + zsh
# install broot
"$HOME/miniconda3/bin/conda" install -c conda-forge broot --all -y
# install tmux + zsh
sudo apt install tmux zsh -y
# Install Starship
"$HOME/miniconda3/bin/conda" install -c conda-forge starship --all -y
# Fetch Config files
mkdir -p "$HOME/.config" 
# $HOME/.tmux.conf
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Utils/main/Scripts/WSL/Debian/.tmux.conf" -o "$HOME/.tmux.conf"
tmux source-file "$HOME/.tmux.conf" >/dev/null 2>&1
# $HOME/.zshrc
touch "$HOME/.zsh_history" ; sudo touch "/root/.zsh_history" 
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Utils/main/Scripts/WSL/Debian/.zshrc" -o "$HOME/.zshrc"
dos2unix --quiet "$HOME/.zshrc" >/dev/null 2>&1
#echo 'ZSH_DISABLE_COMPFIX="true"' | sudo tee "/root/.zshrc"
#cat "$HOME/.zshrc" | sed "s|\$HOME|$HOME|g" | sudo tee -a "/root/.zshrc"
# Plugins
# Install tpm plugins
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
   mkdir -p "$HOME/.tmux"
   "/usr/bin/git" clone "https://github.com/tmux-plugins/tpm" "$HOME/.tmux/plugins/tpm" >/dev/null 2>&1
fi
# Install zsh plugins
mkdir -p "$HOME/.zsh" && pushd "$HOME/.zsh"
"/usr/bin/git" clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" >/dev/null 2>&1
"/usr/bin/git" clone "https://github.com/zsh-users/zsh-autosuggestions.git" >/dev/null 2>&1
"/usr/bin/git" clone "https://github.com/marlonrichert/zsh-autocomplete.git" >/dev/null 2>&1
popd
# Add zshrc to be loaded from .profile
echo '[ -f $HOME/bin/zsh ] && exec $HOME/bin/zsh -l' | tee -a "$HOME/.profile"
# change shell
chsh -s $(which zsh)
#sudo chsh -s $(which zsh)
# Install & Enable TailScale
curl -fsSL https://pkgs.tailscale.com/stable/debian/bookworm.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/debian/bookworm.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt-get update -y
sudo apt-get install tailscale -y
sudo tailscale up
# Source bashrc
source "$HOME/.bashrc"
