#-------------------------------------------------------------------------------#
##DL
# curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/.bashrc"
# curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/.bashrc"
##Loc:
# "$HOME/.bashrc"
# "/root/.bashrc"
# "/etc/bash.bashrc"
##REF: 
# https://github.com/bluz71/dotfiles/blob/master/bashrc
# https://github.com/liskin/dotfiles/tree/home/.bashrc.d
# https://github.com/ashishb/dotfiles
# https://github.com/yorevs/homesetup/tree/master/dotfiles/bash
# https://github.com/fnichol/bashrc/blob/master/bashrc
#-------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------#
##Apperance
export TERM="xterm-256color"
export EDITOR="/usr/bin/nano"
#Colours
txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
badgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset
#Prompt colours
atC="${txtgrn}"
nameC="${txtgrn}"
hostC="${txtgrn}"
pathC="${txtblu}"
pointerC="${bldwht}"
normalC="${txtwht}"
#Red name for root
if [ "${UID}" -eq "0" ]; then 
  nameC="${txtred}" 
fi
#Prompt
export PS1="${nameC}\u${atC}@${hostC}\h${normalC}:${pathC}\w${pointerC}$ ${normalC}"
#-------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------#
##ENV VARS
if [ -z "${USER}" ]; then
  USER="$(whoami)" && export USER="$USER"
fi
if [ -z "${HOME}" ]; then
  HOME="$(getent passwd $USER | cut -d: -f6)" && export HOME="$HOME"
fi
if [ -z "${USER_AGENT}" ]; then
  USER_AGENT="$(curl -qfsSL 'https://pub.ajam.dev/repos/Azathothas/Wordlists/Misc/User-Agents/ua_chrome_macos_latest.txt')" && export USER_AGENT="${USER_AGENT}"
fi
SYSTMP="$(dirname $(mktemp -u))" && export SYSTMP="${SYSTMP}"
#Core
export LANGUAGE=${LANGUAGE:-en_US:en}
export LANG=${LANG:-en_US.UTF-8}
export LC_ALL=${LC_ALL:-${LANG}}

BW_INTERFACE="$(ip route | grep -i 'default' | awk '{print $5}' | tr -d '[:space:]')" && export BW_INTERFACE="${BW_INTERFACE}"
current_dir="$(pwd)"
##PATHS (Only Required)
export GOROOT="$HOME/.go"
export GOPATH="$HOME/go"
export PATH="$HOME/bin:$HOME/.cargo/bin:$HOME/.cargo/env:$GOROOT/bin:$GOPATH/bin:$HOME/.local/bin:$HOME/miniconda3/bin:$HOME/miniconda3/condabin:/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"
#-------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------#
##Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
alias 7z_archive='7z a -t7z -mx="9" -mmt="$(($(nproc)+1))" -bsp1 -bt $1 $2'
alias bat='batcat'
alias benchmarkQ='curl -qfsSL bench.sh | bash'
alias benchmarkX='curl -qfsSL yabs.sh | bash -s -- -i'
alias cf_warp_trace='echo ; curl -qfsSL "https://1.1.1.1/cdn-cgi/trace" ; echo'
alias df='duf'
alias dir='dir --color=auto'
alias du_dir='du -h --max-depth=1 | sort -h'
alias esort='for file in ./* ; do sort -u "$file" -o "$file"; done'
alias egrep='egrep --color=auto'
alias fdfind='fd'
alias fgrep='fgrep --color=auto'
alias file_size='stat -c "%s" "$1" "$2" | numfmt --to="iec" --suffix="B"'
alias grep='grep --color=auto'
alias history_purge='history -c 2>/dev/null ; rm -rf "$HOME/.bash_history"'
alias install_bb_tools='bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/install_bb_tools.sh")'
alias install_bb_tools_raw='bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/install_bb_tools.sh")'
alias ip_ifconfig='ip -a -d -h -p -s address'
alias ip_ifconfig_resolve='ip -a -d -h -p -r -s address'
alias ip_ifconfig_netconf='ip -a -d -h -p -s netconf'
alias ip_quality='bash <(curl -qfskSL "https://raw.githubusercontent.com/xykt/IPQuality/main/ip.sh") -l en'
alias ls='ls -lh --color=auto'
alias ls_ports='sudo netstat -lntup'
alias ls_ports_hosts='sudo lsof -i -l -R'
alias ls_ports_progs='sudo netstat -atulpen'
alias ls_ports_ip='sudo lsof -i -l -R -n'
alias list_ports_netstat='sudo netstat -atulpen'
alias list_procs='sudo ps aux'
alias my_ipv4='curl --ipv4 -qfsSL "http://ipv4.whatismyip.akamai.com" ; echo'
alias my_ipv6='curl --ipv6 -qfsSL "http://ipv6.whatismyip.akamai.com" ; echo'
alias ssh_logs='grep -rsh "ssh" "/var/log" | grep -i "auth" | sort | less'
alias rdp_logs='grep -rsh "rdp" "/var/log" | sort | less'
alias tail_log='tail -f -n +1'
alias tmpdir='cd $(mktemp -d)'
alias tmpdir_du='du -h --max-depth="1" "/tmp" 2>/dev/null | sort -hr'
alias tmpdir_push='pushd "$(mktemp -d)" >/dev/null 2>&1'
alias tmpdir_pop='popd >/dev/null 2>&1'
alias scb='xclip -selection c'
alias vdir='vdir --color=auto'
#-------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------#
##Completions
if [ -f "/etc/bash_completion" ] && ! shopt -oq posix; then
    . "/etc/bash_completion"
fi
#-------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------#
#FFunctions
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
#-------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------#
##Misc
#don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth:erasedups
#History Size
export HISTSIZE=999999
export HISTFILESIZE=9999999
#append to the history file, don't overwrite it
shopt -s histappend
#Setting history format: Index [<User>, <Date> <Time>] command
export HISTTIMEFORMAT="[${USER}, %F %T]  "
#Check the window size after each command and, if necessary,
#update the values of LINES and COLUMNS.
shopt -s checkwinsize
#-------------------------------------------------------------------------------#
