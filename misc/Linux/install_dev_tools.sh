#!/usr/bin/env bash

##Requires: coreutils + curl

##Usage
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/install_dev_tools.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/install_dev_tools.sh")
##Vars
# INSTALL_DIR="/tmp" "${other vars}" bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/install_dev_tools.sh")

#-------------------------------------------------------------------------------#
##Setup ENV & Sanity Checks
 set +e ; set -x
#Check curl 
 if ! command -v curl &> /dev/null; then
     echo -e "\n[-] FATAL: Install Curl (https://bin.pkgforge.dev/$(uname -m)/curl)\n"
   exit 1
 fi
#Check install dirs & sudo
 if [ -z "${INSTALL_DIR}" ]; then 
     if command -v sudo &> /dev/null && sudo -n true 2>/dev/null; then
         export INSTALL_DIR="/usr/local/bin"
         export INSTALL_DIR_ROOT="/usr/bin"
         export INSTALL_DIR_LOCALH="${HOME}/.local/bin"
         export INSTALL_PRE="sudo curl -qfsSL"
         export INSTALL_POST="sudo chmod +x"
         sudo mkdir -p "${INSTALL_DIR}" "${INSTALL_DIR_ROOT}" "${INSTALL_DIR_LOCALH}"
         sudo chmod 777 -R "${HOME}/.local"
         echo -e "\n[+] Setting Install Dir (ROOT) :: ${INSTALL_DIR}\n"
     else
         export INSTALL_DIR="$HOME/bin"
         export INSTALL_DIR_ROOT="$HOME/bin"
         export INSTALL_DIR_LOCALH="${HOME}/.local/bin"
         export INSTALL_PRE="timeout -k 1m 5m curl -qfsSL"
         export INSTALL_POST="chmod +x"
         mkdir -p "${INSTALL_DIR}" "${INSTALL_DIR_ROOT}" "${INSTALL_DIR_LOCALH}"
         echo -e "\n[+] Setting Install Dir (USERSPACE) :: ${INSTALL_DIR}\n"
     fi
 else
     if command -v sudo &> /dev/null && sudo -n true 2>/dev/null; then
         export INSTALL_DIR_ROOT="/usr/bin"
         export INSTALL_DIR_LOCALH="${HOME}/.local/bin"
         export INSTALL_PRE="sudo curl -qfsSL"
         export INSTALL_POST="sudo chmod +x"
         sudo mkdir -p "${INSTALL_DIR}" "${INSTALL_DIR_ROOT}" "${INSTALL_DIR_LOCALH}"
         sudo chmod 777 -R "${HOME}/.local"
     else
         export INSTALL_DIR_ROOT="$HOME/bin"
         export INSTALL_DIR_LOCALH="${HOME}/.local/bin"
         export INSTALL_PRE="curl -qfsSL"
         export INSTALL_POST="chmod +x"
         mkdir -p "${INSTALL_DIR}" "${INSTALL_DIR_ROOT}" "${INSTALL_DIR_LOCALH}"
     fi
 fi
#check install src
 if [ -z "${INSTALL_SRC}" ]; then
     ARCH="$(uname -m)" && export ARCH="${ARCH}"
     if [ "${ARCH}" == "aarch64" ]; then
         INSTALL_SRC="https://bin.pkgforge.dev/aarch64-Linux" ; export INSTALL_SRC="${INSTALL_SRC}"
     elif [ "${ARCH}" == "x86_64" ]; then
         INSTALL_SRC="https://bin.pkgforge.dev/x86_64-Linux" ; export INSTALL_SRC="${INSTALL_SRC}"
     fi
     echo -e "\n[+] Fetching Bins from (Default) :: ${INSTALL_SRC}\n"
 else
     echo -e "\n[+] Using Bins from (Specified) :: ${INSTALL_SRC}\n"
 fi
#check for parallel
 if [[ "${PARALLEL}" == "1" ]]; then
     INSTALL_STRATEGY='&' ; export INSTALL_STRATEGY="${INSTALL_STRATEGY}"
     echo -e "\n[+] Installing in Parallel (Faast) Mode [Re Run : export PARALLEL=0 if Fails]\n"
 else
     INSTALL_STRATEGY='' ; export INSTALL_STRATEGY="${INSTALL_STRATEGY}"
     echo -e "\n[+] Installing in Sequence (Slow) Mode [Re Run : export PARALLEL=1 for Speed]\n"
 fi
#Get size
INSTALL_DIR_SIZE_PRE="$(du -sh ${INSTALL_DIR} | cut -f1)" && export INSTALL_DIR_SIZE_PRE="${INSTALL_DIR_SIZE_PRE}"
#-------------------------------------------------------------------------------# 

#-------------------------------------------------------------------------------#
##Fetch
#7z  : https://www.7-zip.org/
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/7z" -o "${INSTALL_DIR}/7z" && eval "${INSTALL_POST}" "${INSTALL_DIR}/7z" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/7z" -o "${INSTALL_DIR_ROOT}/7z" && eval "${INSTALL_POST}" "${INSTALL_DIR_ROOT}/7z" "${INSTALL_STRATEGY}"
#action-lint
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/actionlint" -o "${INSTALL_DIR}/actionlint" && eval "${INSTALL_POST}" "${INSTALL_DIR}/actionlint" "${INSTALL_STRATEGY}"
#anew
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/anew" -o "${INSTALL_DIR}/anew" && eval "${INSTALL_POST}" "${INSTALL_DIR}/anew" "${INSTALL_STRATEGY}"
#anew-rs : https://github.com/zer0yu/anew
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/anew-rs" -o "${INSTALL_DIR}/anew-rs" && eval "${INSTALL_POST}" "${INSTALL_DIR}/anew-rs" "${INSTALL_STRATEGY}"
#ansi2html: https://github.com/kilobyte/colorized-logs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ansi2html" -o "${INSTALL_DIR}/ansi2html" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ansi2html" "${INSTALL_STRATEGY}"
#ansi2txt: https://github.com/kilobyte/colorized-logs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ansi2txt" -o "${INSTALL_DIR}/ansi2txt" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ansi2txt" "${INSTALL_STRATEGY}"
#archey: https://github.com/HorlogeSkynet/archey4
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/archey" -o "${INSTALL_DIR}/archey" && eval "${INSTALL_POST}" "${INSTALL_DIR}/archey" "${INSTALL_STRATEGY}"
#aria2c
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/aria2c" -o "${INSTALL_DIR}/aria2c" && eval "${INSTALL_POST}" "${INSTALL_DIR}/aria2c" "${INSTALL_STRATEGY}"
#bsdtar
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/bsdtar" -o "${INSTALL_DIR}/bsdtar" && eval "${INSTALL_POST}" "${INSTALL_DIR}/bsdtar" "${INSTALL_STRATEGY}"
#b3sum : https://github.com/BLAKE3-team/BLAKE3
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/b3sum" -o "${INSTALL_DIR}/b3sum" && eval "${INSTALL_POST}" "${INSTALL_DIR}/b3sum" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/b3sum" -o "${INSTALL_DIR_ROOT}/b3sum" && eval "${INSTALL_POST}" "${INSTALL_DIR_ROOT}/b3sum" "${INSTALL_STRATEGY}"
#btop: https://github.com/aristocratos/btop
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/btop" -o "${INSTALL_DIR}/btop" && eval "${INSTALL_POST}" "${INSTALL_DIR}/btop" "${INSTALL_STRATEGY}"
#chafa: https://github.com/hpjansson/chafa
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/chafa" -o "${INSTALL_DIR}/chafa" && eval "${INSTALL_POST}" "${INSTALL_DIR}/chafa" "${INSTALL_STRATEGY}"
#cloudflared: https://github.com/cloudflare/cloudflared
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/cloudflared" -o "${INSTALL_DIR}/cloudflared" && eval "${INSTALL_POST}" "${INSTALL_DIR}/cloudflared" "${INSTALL_STRATEGY}"
#croc : https://github.com/schollz/croc
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/croc" -o "${INSTALL_DIR}/croc" && eval "${INSTALL_POST}" "${INSTALL_DIR}/croc" "${INSTALL_STRATEGY}"
#csvtk
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/csvtk" -o "${INSTALL_DIR}/csvtk" && eval "${INSTALL_POST}" "${INSTALL_DIR}/csvtk" "${INSTALL_STRATEGY}"
#cutlines: https://github.com/Azathothas/Arsenal/tree/main/cutlines
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/cutlines" -o "${INSTALL_DIR}/cutlines" && eval "${INSTALL_POST}" "${INSTALL_DIR}/cutlines" "${INSTALL_STRATEGY}"
#dbin:https://github.com/xplshn/dbin
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dbin" -o "${INSTALL_DIR}/dbin" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dbin" "${INSTALL_STRATEGY}"
#dasel: https://github.com/TomWright/dasel
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dasel" -o "${INSTALL_DIR}/dasel" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dasel" "${INSTALL_STRATEGY}"
#delta
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/delta" -o "${INSTALL_DIR}/delta" && eval "${INSTALL_POST}" "${INSTALL_DIR}/delta" "${INSTALL_STRATEGY}"
#dirstat-rs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ds" -o "${INSTALL_DIR}/ds" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ds" "${INSTALL_STRATEGY}"
#dos2unix: https://dos2unix.sourceforge.io
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dos2unix" -o "${INSTALL_DIR}/dos2unix" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dos2unix" "${INSTALL_STRATEGY}"
#duf
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/duf" -o "${INSTALL_DIR}/duf" && eval "${INSTALL_POST}" "${INSTALL_DIR}/duf" "${INSTALL_STRATEGY}"
#dust
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dust" -o "${INSTALL_DIR}/dust" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dust" "${INSTALL_STRATEGY}"
#dwarfs-tools
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dwarfs-tools" -o "${INSTALL_DIR}/dwarfs" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dwarfs" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dwarfs-tools" -o "${INSTALL_DIR}/mkdwarfs" && eval "${INSTALL_POST}" "${INSTALL_DIR}/mkdwarfs" "${INSTALL_STRATEGY}"
#dysk
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dysk" -o "${INSTALL_DIR}/dysk" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dysk" "${INSTALL_STRATEGY}"
#dust
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dust" -o "${INSTALL_DIR}/dust" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dust" "${INSTALL_STRATEGY}"
#eget
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/eget" -o "${INSTALL_DIR}/eget" && eval "${INSTALL_POST}" "${INSTALL_DIR}/eget" "${INSTALL_STRATEGY}"
#epoch : https://github.com/sj14/epoch
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/epoch" -o "${INSTALL_DIR}/epoch" && eval "${INSTALL_POST}" "${INSTALL_DIR}/epoch" "${INSTALL_STRATEGY}"
#fastfetch : https://github.com/fastfetch-cli/fastfetch
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/fastfetch" -o "${INSTALL_DIR}/fastfetch" && eval "${INSTALL_POST}" "${INSTALL_DIR}/fastfetch" & 
#freeze
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/freeze" -o "${INSTALL_DIR}/freeze" && eval "${INSTALL_POST}" "${INSTALL_DIR}/freeze" "${INSTALL_STRATEGY}"
#fusermount
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/fusermount3" -o "${INSTALL_DIR}/fusermount" && eval "${INSTALL_POST}" "${INSTALL_DIR}/fusermount" "${INSTALL_STRATEGY}"
#gdu : https://github.com/dundee/gdu
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gdu" -o "${INSTALL_DIR}/gdu" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gdu" "${INSTALL_STRATEGY}"
#gh : https://github.com/cli/cli
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gh" -o "${INSTALL_DIR}/gh" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gh" "${INSTALL_STRATEGY}"
#gitleaks: https://github.com/gitleaks/gitleaks
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gitleaks" -o "${INSTALL_DIR}/gitleaks" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gitleaks" "${INSTALL_STRATEGY}"
#git-sizer
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/git-sizer" -o "${INSTALL_DIR}/git-sizer" && eval "${INSTALL_POST}" "${INSTALL_DIR}/git-sizer" "${INSTALL_STRATEGY}"
#glab : https://gitlab.com/gitlab-org/cli
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/glab" -o "${INSTALL_DIR}/glab" && eval "${INSTALL_POST}" "${INSTALL_DIR}/glab" "${INSTALL_STRATEGY}"
#glow
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/glow" -o "${INSTALL_DIR}/glow" && eval "${INSTALL_POST}" "${INSTALL_DIR}/glow" "${INSTALL_STRATEGY}"
#httpx : https://github.com/projectdiscovery/httpx
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/httpx" -o "${INSTALL_DIR}/httpx" && eval "${INSTALL_POST}" "${INSTALL_DIR}/httpx" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/httpx" -o "${INSTALL_DIR_ROOT}/httpx" && eval "${INSTALL_POST}" "${INSTALL_DIR_ROOT}/httpx" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/httpx" -o "${INSTALL_DIR_LOCALH}/httpx" 2>/dev/null && eval "${INSTALL_POST}" "${INSTALL_DIR_LOCALH}/httpx" 2>/dev/null "${INSTALL_STRATEGY}"
#huggingface-cli: https://github.com/huggingface/huggingface_hub
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/huggingface-cli" -o "${INSTALL_DIR}/huggingface-cli" && eval "${INSTALL_POST}" "${INSTALL_DIR}/huggingface-cli" "${INSTALL_STRATEGY}"
#husarnet: https://github.com/husarnet/husarnet
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/husarnet" -o "${INSTALL_DIR}/husarnet" && eval "${INSTALL_POST}" "${INSTALL_DIR}/husarnet" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/husarnet-daemon" -o "${INSTALL_DIR}/husarnet-daemon" && eval "${INSTALL_POST}" "${INSTALL_DIR}/husarnet-daemon" "${INSTALL_STRATEGY}"
#imgcat : https://github.com/danielgatis/imgcat
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/imgcat" -o "${INSTALL_DIR}/imgcat" && eval "${INSTALL_POST}" "${INSTALL_DIR}/imgcat" "${INSTALL_STRATEGY}"
#imagemagick : https://github.com/ImageMagick/ImageMagick
 #eval "${INSTALL_PRE}" "${INSTALL_SRC}/magick_appbundle.no_strip" -o "${INSTALL_DIR}/magick" && eval "${INSTALL_POST}" "${INSTALL_DIR}/magick" "${INSTALL_STRATEGY}"
 #eval "${INSTALL_PRE}" "${INSTALL_SRC}/magick_appbundle.no_strip" -o "${INSTALL_DIR_ROOT}/magick" && eval "${INSTALL_POST}" "${INSTALL_DIR_ROOT}/magick" "${INSTALL_STRATEGY}"
#jc : https://github.com/kellyjonbrazil/jc
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/jc" -o "${INSTALL_DIR}/jc" && eval "${INSTALL_POST}" "${INSTALL_DIR}/jc" "${INSTALL_STRATEGY}"
#jq : https://github.com/jqlang/jq
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/jq" -o "${INSTALL_DIR}/jq" && eval "${INSTALL_POST}" "${INSTALL_DIR}/jq" "${INSTALL_STRATEGY}"
#logdy: https://github.com/logdyhq/logdy-core
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/logdy" -o "${INSTALL_DIR}/logdy" && eval "${INSTALL_POST}" "${INSTALL_DIR}/logdy" "${INSTALL_STRATEGY}"
#mdcat: https://github.com/swsnr/mdcat
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/mdcat" -o "${INSTALL_DIR}/mdcat" && eval "${INSTALL_POST}" "${INSTALL_DIR}/mdcat" "${INSTALL_STRATEGY}"
#micro
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/micro" -o "${INSTALL_DIR}/micro" && eval "${INSTALL_POST}" "${INSTALL_DIR}/micro" "${INSTALL_STRATEGY}"
#miniserve: https://github.com/svenstaro/miniserve
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/miniserve" -o "${INSTALL_DIR}/miniserve" && eval "${INSTALL_POST}" "${INSTALL_DIR}/miniserve" "${INSTALL_STRATEGY}"
#ncdu : https://dev.yorhel.nl/ncdu
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ncdu" -o "${INSTALL_DIR}/ncdu" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ncdu" "${INSTALL_STRATEGY}"
#notify: https://github.com/projectdiscovery/notify
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/notify" -o "${INSTALL_DIR}/notify" && eval "${INSTALL_POST}" "${INSTALL_DIR}/notify" "${INSTALL_STRATEGY}"
#ouch : https://github.com/ouch-org/ouch
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ouch" -o "${INSTALL_DIR}/ouch" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ouch" "${INSTALL_STRATEGY}"
#oras : https://github.com/oras-project/oras
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/oras" -o "${INSTALL_DIR}/oras" && eval "${INSTALL_POST}" "${INSTALL_DIR}/oras" "${INSTALL_STRATEGY}"
#pipetty: https://github.com/kilobyte/colorized-logs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/pipetty" -o "${INSTALL_DIR}/pipetty" && eval "${INSTALL_POST}" "${INSTALL_DIR}/pipetty" "${INSTALL_STRATEGY}"
#pixterm: https://github.com/eliukblau/pixterm
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/pixterm" -o "${INSTALL_DIR}/pixterm" && eval "${INSTALL_POST}" "${INSTALL_DIR}/pixterm" "${INSTALL_STRATEGY}"
#qsv: https://github.com/dathere/qsv
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/qsv" -o "${INSTALL_DIR}/qsv" && eval "${INSTALL_POST}" "${INSTALL_DIR}/qsv" "${INSTALL_STRATEGY}"
#rclone
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/rclone" -o "${INSTALL_DIR}/rclone" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rclone" "${INSTALL_STRATEGY}"
#ripgrep : 
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ripgrep" -o "${INSTALL_DIR}/ripgrep" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ripgrep" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ripgrep" -o "${INSTALL_DIR}/rg" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rg" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/rga" -o "${INSTALL_DIR}/rga" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rga" "${INSTALL_STRATEGY}"
#rsync : https://github.com/RsyncProject/rsync
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/rsync" -o "${INSTALL_DIR}/rsync" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rsync" "${INSTALL_STRATEGY}"
#speedtest-go : https://github.com/showwin/speedtest-go
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/speedtest-go" -o "${INSTALL_DIR}/speedtest-go" && eval "${INSTALL_POST}" "${INSTALL_DIR}/speedtest-go" "${INSTALL_STRATEGY}"
#sttr: https://github.com/abhimanyu003/sttr
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/sttr" -o "${INSTALL_DIR}/sttr" && eval "${INSTALL_POST}" "${INSTALL_DIR}/sttr" "${INSTALL_STRATEGY}"
#tailscale : https://github.com/tailscale/tailscale
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tailscale" -o "${INSTALL_DIR}/tailscale" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tailscale" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tailscaled" -o "${INSTALL_DIR}/tailscaled" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tailscaled" "${INSTALL_STRATEGY}"
#taplo: https://github.com/tamasfe/taplo
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/taplo" -o "${INSTALL_DIR}/taplo" && eval "${INSTALL_POST}" "${INSTALL_DIR}/taplo" "${INSTALL_STRATEGY}"
#tealdeer: https://github.com/tealdeer-rs/tealdeer
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tealdeer" -o "${INSTALL_DIR}/tealdeer" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tealdeer" "${INSTALL_STRATEGY}"
#tmux
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tmux" -o "${INSTALL_DIR}/tmux" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tmux" "${INSTALL_STRATEGY}"
#tok
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tok" -o "${INSTALL_DIR}/tok" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tok" "${INSTALL_STRATEGY}"
#trufflehog : https://github.com/trufflesecurity/trufflehog
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/trufflehog" -o "${INSTALL_DIR}/trufflehog" && eval "${INSTALL_POST}" "${INSTALL_DIR}/trufflehog" "${INSTALL_STRATEGY}"
#trurl : https://github.com/curl/trurl
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/trurl" -o "${INSTALL_DIR}/trurl" && eval "${INSTALL_POST}" "${INSTALL_DIR}/trurl" "${INSTALL_STRATEGY}"
#unfurl : https://github.com/tomnomnom/unfurl 
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/unfurl" -o "${INSTALL_DIR}/unfurl" && eval "${INSTALL_POST}" "${INSTALL_DIR}/unfurl" "${INSTALL_STRATEGY}"
#upx : https://github.com/upx/upx
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/upx" -o "${INSTALL_DIR}/upx" && eval "${INSTALL_POST}" "${INSTALL_DIR}/upx" "${INSTALL_STRATEGY}"
#validtoml
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/validtoml" -o "${INSTALL_DIR}/validtoml" && eval "${INSTALL_POST}" "${INSTALL_DIR}/validtoml" "${INSTALL_STRATEGY}"
#wget
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/wget" -o "${INSTALL_DIR}/wget" && eval "${INSTALL_POST}" "${INSTALL_DIR}/wget" "${INSTALL_STRATEGY}"
#wget2
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/wget2" -o "${INSTALL_DIR}/wget2" && eval "${INSTALL_POST}" "${INSTALL_DIR}/wget2" "${INSTALL_STRATEGY}"
#wormhole-rs: https://github.com/magic-wormhole/magic-wormhole.rs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/wormhole-rs" -o "${INSTALL_DIR}/wormhole-rs" && eval "${INSTALL_POST}" "${INSTALL_DIR}/wormhole-rs" "${INSTALL_STRATEGY}"
#xq: https://github.com/sibprogrammer/xq
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/xq" -o "${INSTALL_DIR}/xq" && eval "${INSTALL_POST}" "${INSTALL_DIR}/xq" "${INSTALL_STRATEGY}"
#Yq
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/yq" -o "${INSTALL_DIR}/yq" && eval "${INSTALL_POST}" "${INSTALL_DIR}/yq" "${INSTALL_STRATEGY}"
#Yj
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/yj" -o "${INSTALL_DIR}/yj" && eval "${INSTALL_POST}" "${INSTALL_DIR}/yj" "${INSTALL_STRATEGY}"
#Zapper: https://github.com/hackerschoice/zapper
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/zapper" -o "${INSTALL_DIR}/zapper" && eval "${INSTALL_POST}" "${INSTALL_DIR}/zapper" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/zapper-stealth" -o "${INSTALL_DIR}/zproccer" && eval "${INSTALL_POST}" "${INSTALL_DIR}/zproccer" "${INSTALL_STRATEGY}"
#Zerotier: https://github.com/zerotier/ZeroTierOne
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/zerotier-cli" -o "${INSTALL_DIR}/zerotier-cli" && eval "${INSTALL_POST}" "${INSTALL_DIR}/zerotier-cli" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/zerotier-idtool" -o "${INSTALL_DIR}/zerotier-idtool" && eval "${INSTALL_POST}" "${INSTALL_DIR}/zerotier-idtool" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/zerotier-one" -o "${INSTALL_DIR}/zerotier-one" && eval "${INSTALL_POST}" "${INSTALL_DIR}/zerotier-one" "${INSTALL_STRATEGY}"
#zstd: https://github.com/facebook/zstd
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/zstd" -o "${INSTALL_DIR}/zstd" && eval "${INSTALL_POST}" "${INSTALL_DIR}/zstd" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/zstd" -o "${INSTALL_DIR_ROOT}/zstd" && eval "${INSTALL_POST}" "${INSTALL_DIR_ROOT}/zstd" "${INSTALL_STRATEGY}"
#-------------------------------------------------------------------------------#
set +x ; echo
wait ; reset >/dev/null 2>&1 ; echo
#Fix Perms
if command -v sudo &> /dev/null && sudo -n true 2>/dev/null; then
   sudo chmod 777 -R "${HOME}/.local"
fi
#Check $PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* || ":$PATH:" != *":$INSTALL_DIR_ROOT:"* || ":$PATH:" != *":$INSTALL_DIR_LOCALH:"* ]]; then
 echo -e "\n[!] Adjust your \"\$PATH\" to include: [ ${INSTALL_DIR_ROOT} ${INSTALL_DIR} ${INSTALL_DIR_LOCALH} ]"
 echo -e "[!] Current \"\$PATH\" : [ ${PATH} ]\n"
fi
#Print Stats
INSTALL_DIR_SIZE_POST="$(du -sh ${INSTALL_DIR} | cut -f1)" && export INSTALL_DIR_SIZE_POST="${INSTALL_DIR_SIZE_POST}"
echo -e "\n[+] Disk Size (${INSTALL_DIR}) :: ${INSTALL_DIR_SIZE_PRE} --> ${INSTALL_DIR_SIZE_POST}\n"
#Cleanup & Exit
unset ARCH INSTALL_DIR INSTALL_DIR_ROOT INSTALL_DIR_SIZE_PRE INSTALL_DIR_SIZE_POST INSTALL_PRE INSTALL_POST INSTALL_SRC
###END###
