#!/usr/bin/env bash

#Usage: bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/setup_ssh_x86_64.sh")
#Force: curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/setup_ssh_x86_64.sh" | bash -s -- -f

#----------------------------------------------------------------------------#
# For debug
#set -x
#A bit of Styling
RED='\033[31m'
GREEN='\033[32m'
DGREEN='\033[38;5;28m'
GREY='\033[37m'
BLUE='\033[34m'
YELLOW='\033[33m'
PURPLE='\033[35m'
PINK='\033[38;5;206m'
VIOLET='\033[0;35m'
RESET='\033[0m'
NC='\033[0m'
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#ENV:VARS
export BINARY_ROOT_DIR="/usr/local/bin"
export BINARY_HOME_DIR="$HOME/bin"
sudo mkdir -p "$BINARY_ROOT_DIR" || mkdir -p "$BINARY_HOME_DIR"
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
# Parse command line arguments
#def
force_setup=
#if
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -f|--force)
            force_setup=1
            shift
            ;;
    esac
done
#----------------------------------------------------------------------------#
#Auxiliaries
#scp
  install_scp()
  {
       sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/scp" -o "$BINARY_ROOT_DIR/scp" || curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/scp" -o "$BINARY_HOME_DIR/ssh"
       sudo chmod +xwr "$BINARY_ROOT_DIR/scp" || chmod +xwr "$BINARY_HOME_DIR/scp"
  }
  export -f install_scp
if ! command -v scp >/dev/null 2>&1; then
    echo -e "\n [+]${DGREEN}Installing ${PURPLE}scp${NC}\n"
     install_scp
elif [ -n "$force_setup" ] ; then
    echo -e "\n [+]${PINK}Force ${DGREEN}Installing ${PURPLE}scp${NC}\n"
     install_scp
fi
#sftp
  install_sftp()
  {
     sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/sftp" -o "$BINARY_ROOT_DIR/sftp" || curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/sftp" -o "$BINARY_HOME_DIR/sftp"
     sudo chmod +xwr "$BINARY_ROOT_DIR/sftp" || chmod +xwr "$BINARY_HOME_DIR/sftp"
  }
  export -f install_sftp       
if ! command -v sftp >/dev/null 2>&1; then
    echo -e "\n [+]${DGREEN}Installing ${PURPLE}sftp${NC}\n"
     install_sftp
elif [ -n "$force_setup" ] ; then
    echo -e "\n [+]${PINK}Force ${DGREEN}Installing ${PURPLE}sftp${NC}\n"
     install_sftp
fi
#SSH
  install_ssh()
  {
     sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ssh" -o "$BINARY_ROOT_DIR/ssh" || curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ssh" -o "$BINARY_HOME_DIR/ssh"
     sudo chmod +xwr "$BINARY_ROOT_DIR/ssh" || chmod +xwr "$BINARY_HOME_DIR/ssh"
  }
  export -f install_ssh      
if ! command -v ssh >/dev/null 2>&1; then
    echo -e "\n [+]${DGREEN}Installing ${PURPLE}ssh${NC}\n"
     install_ssh
elif [ -n "$force_setup" ] ; then
    echo -e "\n [+]${PINK}Force ${DGREEN}Installing ${PURPLE}ssh${NC}\n"
    #Remove old
     sudo rm "$(which ssh)" 2>/dev/null ; sudo rm "$(which ssh)" 2>/dev/null
     install_ssh
fi
#ssh-keyscan
  install_ssh_keyscan()
  {
     sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ssh-keyscan" -o "$BINARY_ROOT_DIR/ssh-keyscan" || curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ssh-keyscan" -o "$BINARY_HOME_DIR/ssh-keyscan"
     sudo chmod +xwr "$BINARY_ROOT_DIR/ssh-keyscan" || chmod +xwr "$BINARY_HOME_DIR/ssh-keyscan"
  }
  export -f install_ssh_keyscan
if ! command -v ssh-keyscan >/dev/null 2>&1; then
    echo -e "\n [+]${DGREEN}Installing ${PURPLE}ssh-keyscan${NC}\n"
     install_ssh_keyscan
elif [ -n "$force_setup" ] ; then
    echo -e "\n [+]${PINK}Force ${DGREEN}Installing ${PURPLE}ssh-keyscan${NC}\n"
     install_ssh_keyscan
fi
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#Get Config
sudo mkdir -p "/etc/ssh/" || mkdir -p "$HOME/.ssh"
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_config_amd_x86_64_Linux" -o "/etc/ssh/sshd_config" || curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/openssh/sshd_config_amd_x86_64_Linux" -o "$HOME/.ssh/sshd_config"
#Sane Settings
sudo sed -e '/^#AllowAgentForwarding/s/^#//' -e '/^#AllowTcpForwarding/s/^#//' -e '/^#X11Forwarding/s/^#//' -e '/^#PrintLastLog/s/^#//' -e '/^#TCPKeepAlive/s/^#//' -i "/etc/ssh/sshd_config" || sed -e '/^#AllowAgentForwarding/s/^#//' -e '/^#AllowTcpForwarding/s/^#//' -e '/^#X11Forwarding/s/^#//' -e '/^#PrintLastLog/s/^#//' -e '/^#TCPKeepAlive/s/^#//' -i "$HOME/.ssh/sshd_config"
#Enable X11Forwarding
sudo sed -e 's/^X11Forwarding no/X11Forwarding yes/' -i "/etc/ssh/sshd_config" || sed -e 's/^X11Forwarding no/X11Forwarding yes/' -i "$HOME/.ssh/sshd_config"
##PasswordAuthentication yes
# sudo sed -e '/^#PasswordAuthentication/s/^#//' -i "/etc/ssh/sshd_config" || sed -e '/^#PasswordAuthentication/s/^#//' -i "$HOME/.ssh/sshd_config"
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#ssh-keygen
  create_host_keys()
  {
       sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ssh-keygen" -o "$BINARY_ROOT_DIR/ssh-keygen" || curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ssh-keygen" -o "$BINARY_HOME_DIR/ssh-keygen"
       sudo chmod +xwr "$BINARY_ROOT_DIR/ssh-keygen" || chmod +xwr "$BINARY_HOME_DIR/ssh-keygen"
       #Generate-Keys
       # dsa
       echo "yes" | sudo ssh-keygen -N "" -t dsa -f "/etc/ssh/ssh_host_dsa_key" || echo "yes" | ssh-keygen -N "" -t dsa -f "$HOME/.ssh/ssh_host_dsa_key"
       # ecdsa
       echo "yes" | sudo ssh-keygen -N "" -t ecdsa -b 521 -f "/etc/ssh/ssh_host_ecdsa_key" || echo "yes" | ssh-keygen -N "" -t ecdsa -b 521 -f "$HOME/.ssh/ssh_host_ecdsa_key"
       # ed25519
       echo "yes" | sudo ssh-keygen -N "" -t ed25519 -f "/etc/ssh/ssh_host_ed25519_key" || echo "yes" | ssh-keygen -N "" -t ed25519 -f "$HOME/.ssh/ssh_host_ed25519_key"
       # creates id_rsa (ssh_host_rsa_key) & id_rsa.pub (ssh_host_rsa_key.pub)
       echo "yes" | sudo ssh-keygen -N "" -t rsa -b 4096 -f "/etc/ssh/ssh_host_rsa_key" || echo "yes" | ssh-keygen -N "" -t rsa -b 4096 -f "$HOME/.ssh/ssh_host_rsa_key"
  }
  export -f create_host_keys
if ! command -v ssh-keygen >/dev/null 2>&1; then
    echo -e "\n [+]${DGREEN}Installing ${PURPLE}ssh-keygen${NC}\n"    
     create_host_keys
elif [ -n "$force_setup" ] ; then
    echo -e "\n [+]${PINK}Force ${DGREEN}Installing ${PURPLE}ssh-keygen${NC}\n"
     create_host_keys
fi
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#sshd
  install_sshd(){
     #Install  
       sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/sshd" -o "$BINARY_ROOT_DIR/sshd" || curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/sshd" -o "$BINARY_HOME_DIR/sshd"
       sudo chmod +xwr "$BINARY_ROOT_DIR/sshd" || chmod +xwr "$BINARY_HOME_DIR/sshd"
     #Symlink
       sudo ln -s "/usr/local/bin/ssh" "/usr/bin/ssh" 2>/dev/null ; sudo ln -s "/usr/local/bin/sshd" "/usr/bin/sshd" 2>/dev/null
  }
  export -f install_sshd
if ! command -v sshd >/dev/null 2>&1; then
    echo -e "\n [+]${DGREEN}Installing ${PURPLE}sshd${NC}\n"    
     install_sshd
elif [ -n "$force_setup" ] ; then
    echo -e "\n [+]${PINK}Force ${DGREEN}Installing ${PURPLE}sshd${NC}\n"
    #Remove old
    sudo rm "$(which sshd)" 2>/dev/null ; sudo rm "$(which sshd)" 2>/dev/null
     install_sshd
fi
#----------------------------------------------------------------------------#
# Ref: https://linux.die.net/man/8/sshd
# -4 --> Forces sshd to use IPv4 addresses only.
# -6 --> Forces sshd to use IPv6 addresses only.
# -D --> Doesn't detach to become a daemon
# -d --> debug mode
# -f --> $PATH_TO_sshd_config [ Default: /etc/ssh/sshd_config ]
# -h --> $PATH_TO_host_key_file [ Default: /etc/ssh/ssh_host_key |  /etc/ssh/ssh_host_rsa_key | /etc/ssh/ssh_host_dsa_key ]
# -o --> Directly specify config, formatted as sshd config file format
# -q --> Quiet Mode,, no logs
 #Only needed for root
  sudo mkdir -p "/var/empty" 2>/dev/null
 #Start
  sudo "$(which sshd)" -f "/etc/ssh/sshd_config" -h "/etc/ssh/ssh_host_rsa_key" -p "22" || "$(which sshd)" -f "$HOME/.ssh/sshd_config" -h "$HOME/.ssh/ssh_host_rsa_key" -p "22"
#Echo
 echo -e "\n [+] ${BLUE}SSHD${NC}\n" 
  ps -aux | grep -i "sshd"
  pgrep -f "sshd"
#Kill
#  sudo pgrep -f "sshd" | xargs sudo kill -9 2>/dev/null 
#----------------------------------------------------------------------------#
#EOF
#----------------------------------------------------------------------------#
