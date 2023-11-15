#Set:
#curl -qfSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Android/Termux/.zshrc" -o "$HOME/.zshrc"
#source "$HOME/.zshrc"
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
#PATHS
export PATH="/data/data/com.termux/files/usr/bin:$HOME/usr/bin:$HOME/.cargo/bin:$HOME/go:$HOME/go/bin:$HOME/.go:$HOME/.go/bin:$HOME/bin/:$PATH"
#Env variables
export ANDROID_ART_ROOT="/apex/com.android.art"
export ANDROID_DATA="/data"
export ANDROID_ROOT="/system"
export EXTERNAL_STORAGE="/sdcard"
export PREFIX="/data/data/com.termux/files/usr"
export TERMUX_ROOT="/data/data/com.termux/files"
export TERM="xterm-256color"
export TMP="/data/data/com.termux/files/usr/tmp"
export TMPDIR="/data/data/com.termux/files/usr/tmp"
current_dir="$(pwd)"
#aliases
alias adb-remote-start='sudo setprop service.adb.tcp.port 7777 ; sudo stop adbd ; sudo start adbd ; sudo netstat -tulpn | grep 7777 ; echo -e "\n[+] Started adbd\n"'
alias adb-remote-stop='sudo setprop service.adb.tcp.port -1 ; sudo stop adbd ; sudo netstat -tulpn | grep 7777 ; echo -e "\n[+] Stopped adbd\n"'
alias bat='batcat'
alias bandwidth-all='sudo ifconfig -a | awk "/^[a-z]/ {printf \$1 \":\"}" 2>/dev/null | tr -d "[:space:]" | tr ":" "\\n" | grep -v "^$" | xargs -I{} bash -c "echo -e \"\n[+] {}\" && sudo ifconfig \"{}\" | grep -i \"RX packets\|TX packets\" | sed \"s/^[ \\t]*//;s/TX/\\n&/\" | sed \"/^$/d\" | sed -e \"/^$/N;/^\\n$/D\""'
alias bandwidth-wlan0='sudo ifconfig wlan0 | grep -i "RX packets\|TX packets" | sed "s/^[ \\t]*//;s/TX/\\n&/" | sed "/^$/d" | sed -e "/^$/N;/^\\n$/D"'
alias benchmarkQ='curl -qfsSL bench.sh | bash'
alias benchmarkX='curl -qfsSL yabs.sh | bash -s -- -i'
alias cls='clear'
alias cpy='xclip -selection c'
#alias df='duf'
alias dir='dir --color=auto'
#alias dig='dog $1 $2 $3 $4 A AAAA CNAME EUI48 EUI64 HINFO LOC NAPTR MX NS OPENPGPKEY PTR SSHFP TLSA SOA SRV TXT URI'
alias dig-dns='udig -d $1 $2 $3 $4'
alias dump-battery-stats='sudo dumpsys batterystats'
alias enum_me='curl -qfsSL https://github.com/diego-treitos/linux-smart-enumeration/releases/latest/download/lse.sh | bash /dev/stdin $1 $2 $3 $4 $5'
alias esort='for file in ./* ; do sort -u "$file" -o "$file"; done'
alias egrep='egrep --color=auto'
alias fdfind='fd'
alias fgrep='fgrep --color=auto'
alias get-sudo='curl -qfsSL "https://github.com/agnostic-apollo/sudo/releases/latest/download/sudo" -o "$PREFIX/bin/sudo" && chmod +xwr "$PREFIX/bin/sudo" ; sudo -h'
alias grep='grep --color=auto'
alias list-interfaces='sudo ifconfig -a | awk "/^[a-z]/ {printf \$1 \":\"}" 2>/dev/null | tr -d "[:space:]" | tr ":" "\\n" | grep -v "^$"'
alias list-ports='sudo netstat -tulpn'
alias list-procs='sudo ps aux'
alias ls='ls -lh --color=auto'
alias nano='nano -m'
#alias ping='tcping -r 3 -4 $1 $2 $3 $4 2>/dev/null'
alias scb='xclip -selection c'
alias sshd-logs-termux='less +F "$PREFIX/var/log/sv/sshd/current"'
alias tree='br -sdp'
alias update-zshrc='curl -qfSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Android/Termux/.zshrc" -o "$HOME/.zshrc" ; source "$HOME/.zshrc"'
alias vdir='vdir --color=auto'
#functions
#Donwload Binaries from Github Releases
# eget_dl()
# {
#    REPO=$(echo "$1" | sed -e '/^$/d' -e 's/[[:space:]]*$//' | sed -E 's|https://github.com/([^/]+/[^/]+).*|\1|') && export "REPO=$REPO"
#    BIN=$(echo "$1" | sed -e '/^$/d' -e 's/[[:space:]]*$//' | sed 's|https://github.com/||; s|\?.*||' | awk -F '/' '{print $2}') && export "BIN=$BIN"
#    # Option Args
#    case "$2" in
#       -b | -bin | --bin)
#          eget "$REPO" --to "$HOME/bin/$BIN" && chmod +xwr "$HOME/bin/$BIN"
#          ;;
#       -c | -cargo | --cargo)
#          eget "$REPO" --to "$HOME/.cargo/bin/$BIN" && chmod +xwr "$HOME/.cargo/bin/$BIN"
#          ;;
#       -g | -go | --go)
#          eget "$REPO" --to "$HOME/go/bin/$BIN" && chmod +xwr "$HOME/go/bin/$BIN"
#          ;;
#       *)
#          echo -e "Invalid option. \nUsage: \neget_dl <https://repository-url> -b/--bin (Save --> ~/bin/*) [Linux/Any] \n -c/--cargo (Save --> ~/.cargo/bin/*) [Rust] \n -g/--go (Save --> ~/go/bin/*) [Golang]"
#          ;;
#    esac
# }
#FZF Config
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"
export FZF_BASE="$HOME/fzf"
export FZF_DEFAULT_PATH="$HOME"
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'
#export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat --color=always --line-range :50 {}'"
export FZF_ALT_C_COMMAND='fdfind --type d . --hidden --exclude .git'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
#Tere Config : https://github.com/mgunyho/tere
tere() {
    local result=$(command tere "$@")
    [ -n "$result" ] && cd -- "$result"
}
#zsh config
#setopt autocd              # change directory just by typing its name
#setopt correct            # auto correct mistakes
setopt interactivecomments # allow comments in interactive mode
#setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt +o nomatch #setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
#setopt numericglobsort     # sort filenames numerically when it makes sense
#setopt promptsubst         # enable command substitution in prompt
#hide EOL sign ('%')
PROMPT_EOL_MARK=""
#Plugins
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
#This sometimes wrecks havoc, can be disabled
source "$HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# Select all suggestion instead of top on result only
#zstyle ':autocomplete:tab:*' insert-unambiguous yes
#zstyle ':autocomplete:tab:*' widget-style menu-select
#zstyle ':autocomplete:*' min-input 2
#bindkey $key[Up] up-line-or-history
#bindkey $key[Down] down-line-or-history
# Save type history for completion and easier life
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
#Some Custom QOL Changes
#Prompt
eval "$(starship init zsh)" 2>/dev/null
# Set prompt
#starship preset pure-preset -o "$HOME/.config/starship.toml" 2>/dev/null
#starship preset nerd-font-symbols -o "$HOME/.config/starship.toml" 2>/dev/null
starship preset no-nerd-font -o "$HOME/.config/starship.toml" 2>/dev/null
#clear
source /data/data/com.termux/files/home/.config/broot/launcher/bash/br
###
#EOF
