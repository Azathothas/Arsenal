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

#PATHS (Only Required)
export GOROOT="$HOME/.go"
export GOPATH="$HOME/go"
export PATH="$HOME/bin:$HOME/.cargo/bin:$HOME/.cargo/env:$GOROOT/bin:$GOPATH/bin:$HOME/miniconda3/bin:$HOME/miniconda3/condabin:/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"

#Env variables
current_dir="$(pwd)"
#Fix Clipboard
export "DISPLAY=:0.0"


#aliases
alias bat='batcat'
alias benchmarkQ='curl -qfsSL bench.sh | bash'
alias benchmarkX='curl -qfsSL yabs.sh | bash -s -- -i'
alias df='duf'
alias dir='dir --color=auto'
alias enum_me='curl -qfsSL https://github.com/diego-treitos/linux-smart-enumeration/releases/latest/download/lse.sh | bash /dev/stdin $1 $2 $3 $4 $5'
alias esort='for file in ./* ; do sort -u "$file" -o "$file"; done'
alias egrep='egrep --color=auto'
alias fdfind='fd'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls -lh --color=auto'
alias scb='xclip -selection c'
alias tree='br -sdp'
alias vdir='vdir --color=auto'

#functions
#Donwload Binaries from Github Releases
eget_dl()
{
   REPO=$(echo "$1" | sed -e '/^$/d' -e 's/[[:space:]]*$//' | sed -E 's|https://github.com/([^/]+/[^/]+).*|\1|') && export "REPO=$REPO"
   BIN=$(echo "$1" | sed -e '/^$/d' -e 's/[[:space:]]*$//' | sed 's|https://github.com/||; s|\?.*||' | awk -F '/' '{print $2}') && export "BIN=$BIN"
   # Option Args
   case "$2" in
      -b | -bin | --bin)
         eget "$REPO" --to "$HOME/bin/$BIN" && chmod +xwr "$HOME/bin/$BIN"
         ;;
      -c | -cargo | --cargo)
         eget "$REPO" --to "$HOME/.cargo/bin/$BIN" && chmod +xwr "$HOME/.cargo/bin/$BIN"
         ;;
      -g | -go | --go)
         eget "$REPO" --to "$HOME/go/bin/$BIN" && chmod +xwr "$HOME/go/bin/$BIN"
         ;;
      *)
         echo -e "Invalid option. \nUsage: \neget_dl <https://repository-url> -b/--bin (Save --> ~/bin/*) [Linux/Any] \n -c/--cargo (Save --> ~/.cargo/bin/*) [Rust] \n -g/--go (Save --> ~/go/bin/*) [Golang]"
         ;;
   esac
}

#FZF Config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_BASE=$HOME/fzf
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
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Select all suggestion instead of top on result only
#zstyle ':autocomplete:tab:*' insert-unambiguous yes
#zstyle ':autocomplete:tab:*' widget-style menu-select
#zstyle ':autocomplete:*' min-input 2
#bindkey $key[Up] up-line-or-history
#bindkey $key[Down] down-line-or-history
# Save type history for completion and easier life
HISTFILE=~/.zsh_history
HISTSIZE=99999
SAVEHIST=99999
setopt appendhistory

#Some Custom QOL Changes
#Prompt
eval "$(starship init zsh)"
# Set prompt
#starship preset pure-preset -o ~/.config/starship.toml
#starship preset nerd-font-symbols -o ~/.config/starship.toml
starship preset no-nerd-font -o ~/.config/starship.toml
cd $current_dir && clear
# Source Tmux: 
tmux source-file "$HOME/.tmux.conf" >/dev/null 2>&1
clear
###
#EOF
