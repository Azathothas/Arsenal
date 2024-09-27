#!/usr/bin/env bash

##Requires: coreutils + curl

##Usage
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/install_bb_tools.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/install_bb_tools.sh")
##Vars
# INSTALL_DIR="/tmp" "${other vars}" bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/install_bb_tools.sh")

#-------------------------------------------------------------------------------#
##Setup ENV & Sanity Checks
 set +e ; set -x
#Check curl 
 if ! command -v curl &> /dev/null; then
     echo -e "\n[-] FATAL: Install Curl (https://bin.ajam.dev/$(uname -m)/curl)\n"
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
         INSTALL_SRC="https://bin.ajam.dev/aarch64_arm64_Linux" ; export INSTALL_SRC="${INSTALL_SRC}"
     elif [ "${ARCH}" == "x86_64" ]; then
         INSTALL_SRC="https://bin.ajam.dev/x86_64_Linux" ; export INSTALL_SRC="${INSTALL_SRC}"
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
#amass : https://github.com/owasp-amass/amass
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/amass" -o "${INSTALL_DIR}/amass" && eval "${INSTALL_POST}" "${INSTALL_DIR}/amass" "${INSTALL_STRATEGY}"
#analyticsrelationships : https://github.com/Josue87/analyticsrelationships
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/analyticsrelationships" -o "${INSTALL_DIR}/analyticsrelationships" && eval "${INSTALL_POST}" "${INSTALL_DIR}/analyticsrelationships" "${INSTALL_STRATEGY}"
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
#asn
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/asn" -o "${INSTALL_DIR}/asn" && eval "${INSTALL_POST}" "${INSTALL_DIR}/asn" "${INSTALL_STRATEGY}"
#asnmap
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/asnmap" -o "${INSTALL_DIR}/asnmap" && eval "${INSTALL_POST}" "${INSTALL_DIR}/asnmap" "${INSTALL_STRATEGY}"
#bsdtar
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/Baseutils/libarchive/bsdtar" -o "${INSTALL_DIR}/bsdtar" && eval "${INSTALL_POST}" "${INSTALL_DIR}/bsdtar" "${INSTALL_STRATEGY}"
#b3sum : https://github.com/BLAKE3-team/BLAKE3
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/b3sum" -o "${INSTALL_DIR}/b3sum" && eval "${INSTALL_POST}" "${INSTALL_DIR}/b3sum" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/b3sum" -o "${INSTALL_DIR_ROOT}/b3sum" && eval "${INSTALL_POST}" "${INSTALL_DIR_ROOT}/b3sum" "${INSTALL_STRATEGY}"
#brutespray: https://github.com/x90skysn3k/brutespray
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/brutespray" -o "${INSTALL_DIR}/brutespray" && eval "${INSTALL_POST}" "${INSTALL_DIR}/brutespray" "${INSTALL_STRATEGY}"
#btop: https://github.com/aristocratos/btop
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/btop" -o "${INSTALL_DIR}/btop" && eval "${INSTALL_POST}" "${INSTALL_DIR}/btop" "${INSTALL_STRATEGY}"
#cdncheck
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/cdncheck" -o "${INSTALL_DIR}/cdncheck" && eval "${INSTALL_POST}" "${INSTALL_DIR}/cdncheck" "${INSTALL_STRATEGY}"
#cent
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/cent" -o "${INSTALL_DIR}/cent" && eval "${INSTALL_POST}" "${INSTALL_DIR}/cent" "${INSTALL_STRATEGY}"
#certstream: https://github.com/Azathothas/Arsenal/tree/main/certstream
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/certstream" -o "${INSTALL_DIR}/certstream" && eval "${INSTALL_POST}" "${INSTALL_DIR}/certstream" "${INSTALL_STRATEGY}"
#certstream-server-go: https://github.com/d-Rickyy-b/certstream-server-go
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/certstream-server-go" -o "${INSTALL_DIR}/certstream-server-go" && eval "${INSTALL_POST}" "${INSTALL_DIR}/certstream-server-go" "${INSTALL_STRATEGY}"
#cloudflared: https://github.com/cloudflare/cloudflared
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/cloudflared" -o "${INSTALL_DIR}/cloudflared" && eval "${INSTALL_POST}" "${INSTALL_DIR}/cloudflared" "${INSTALL_STRATEGY}"
#crlfuzz : https://github.com/dwisiswant0/crlfuzz
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/crlfuzz" -o "${INSTALL_DIR}/crlfuzz" && eval "${INSTALL_POST}" "${INSTALL_DIR}/crlfuzz" "${INSTALL_STRATEGY}"
#croc : https://github.com/schollz/croc
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/croc" -o "${INSTALL_DIR}/croc" && eval "${INSTALL_POST}" "${INSTALL_DIR}/croc" "${INSTALL_STRATEGY}"
#crt : https://github.com/cemulus/crt
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/crt" -o "${INSTALL_DIR}/crt" && eval "${INSTALL_POST}" "${INSTALL_DIR}/crt" "${INSTALL_STRATEGY}"
#csvtk
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/csvtk" -o "${INSTALL_DIR}/csvtk" && eval "${INSTALL_POST}" "${INSTALL_DIR}/csvtk" "${INSTALL_STRATEGY}"
#cut-cdn
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/cut-cdn" -o "${INSTALL_DIR}/cut-cdn" && eval "${INSTALL_POST}" "${INSTALL_DIR}/cut-cdn" "${INSTALL_STRATEGY}"
#cutlines: https://github.com/Azathothas/Arsenal/tree/main/cutlines
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/cutlines" -o "${INSTALL_DIR}/cutlines" && eval "${INSTALL_POST}" "${INSTALL_DIR}/cutlines" "${INSTALL_STRATEGY}"
#dalfox : https://github.com/hahwul/dalfox
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dalfox" -o "${INSTALL_DIR}/dalfox" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dalfox" "${INSTALL_STRATEGY}"
#dbin:https://github.com/xplshn/dbin
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dbin" -o "${INSTALL_DIR}/dbin" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dbin" "${INSTALL_STRATEGY}"
#dasel: https://github.com/TomWright/dasel
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dasel" -o "${INSTALL_DIR}/dasel" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dasel" "${INSTALL_STRATEGY}"
#delta
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/delta" -o "${INSTALL_DIR}/delta" && eval "${INSTALL_POST}" "${INSTALL_DIR}/delta" "${INSTALL_STRATEGY}"
#dirstat-rs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ds" -o "${INSTALL_DIR}/ds" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ds" "${INSTALL_STRATEGY}"
#dnstake : https://github.com/pwnesia/dnstake
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dnstake" -o "${INSTALL_DIR}/dnstake" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dnstake" "${INSTALL_STRATEGY}"
#dnsx : https://github.com/projectdiscovery/dnsx
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dnsx" -o "${INSTALL_DIR}/dnsx" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dnsx" "${INSTALL_STRATEGY}"
#dos2unix: https://dos2unix.sourceforge.io
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dos2unix" -o "${INSTALL_DIR}/dos2unix" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dos2unix" "${INSTALL_STRATEGY}"
#dsieve : https://github.com/trickest/dsieve
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dsieve" -o "${INSTALL_DIR}/dsieve" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dsieve" "${INSTALL_STRATEGY}"
#duf
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/duf" -o "${INSTALL_DIR}/duf" && eval "${INSTALL_POST}" "${INSTALL_DIR}/duf" "${INSTALL_STRATEGY}"
#dust
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dust" -o "${INSTALL_DIR}/dust" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dust" "${INSTALL_STRATEGY}"
#dysk
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dysk" -o "${INSTALL_DIR}/dysk" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dysk" "${INSTALL_STRATEGY}"
#dust
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/dust" -o "${INSTALL_DIR}/dust" && eval "${INSTALL_POST}" "${INSTALL_DIR}/dust" "${INSTALL_STRATEGY}"
#eget
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/eget" -o "${INSTALL_DIR}/eget" && eval "${INSTALL_POST}" "${INSTALL_DIR}/eget" "${INSTALL_STRATEGY}"
#enumerepo : https://github.com/trickest/enumerepo
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/enumerepo" -o "${INSTALL_DIR}/enumerepo" && eval "${INSTALL_POST}" "${INSTALL_DIR}/enumerepo" "${INSTALL_STRATEGY}"
#epoch : https://github.com/sj14/epoch
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/epoch" -o "${INSTALL_DIR}/epoch" && eval "${INSTALL_POST}" "${INSTALL_DIR}/epoch" "${INSTALL_STRATEGY}"
#fastfetch : https://github.com/fastfetch-cli/fastfetch
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/fastfetch" -o "${INSTALL_DIR}/fastfetch" && eval "${INSTALL_POST}" "${INSTALL_DIR}/fastfetch" & 
#ffuf : https://github.com/ffuf/ffuf
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ffuf" -o "${INSTALL_DIR}/ffuf" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ffuf" "${INSTALL_STRATEGY}"
#fget
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/fget" -o "${INSTALL_DIR}/fget" && eval "${INSTALL_POST}" "${INSTALL_DIR}/fget" "${INSTALL_STRATEGY}"
#findomain
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/findomain" -o "${INSTALL_DIR}/findomain" && eval "${INSTALL_POST}" "${INSTALL_DIR}/findomain" "${INSTALL_STRATEGY}"
#freeze
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/freeze" -o "${INSTALL_DIR}/freeze" && eval "${INSTALL_POST}" "${INSTALL_DIR}/freeze" "${INSTALL_STRATEGY}"
#gau : https://github.com/lc/gau
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gau" -o "${INSTALL_DIR}/gau" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gau" "${INSTALL_STRATEGY}"
#gdu : https://github.com/dundee/gdu
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gdu" -o "${INSTALL_DIR}/gdu" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gdu" "${INSTALL_STRATEGY}"
#getJS
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/getJS" -o "${INSTALL_DIR}/getJS" && eval "${INSTALL_POST}" "${INSTALL_DIR}/getJS" "${INSTALL_STRATEGY}"
#gf : https://github.com/tomnomnom/gf
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gf" -o "${INSTALL_DIR}/gf" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gf" "${INSTALL_STRATEGY}"
#gh : https://github.com/cli/cli
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gh" -o "${INSTALL_DIR}/gh" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gh" "${INSTALL_STRATEGY}"
#git-sizer
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/git-sizer" -o "${INSTALL_DIR}/git-sizer" && eval "${INSTALL_POST}" "${INSTALL_DIR}/git-sizer" "${INSTALL_STRATEGY}"
#gitdorks_go : https://github.com/damit5/gitdorks_go
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gitdorks_go" -o "${INSTALL_DIR}/gitdorks_go" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gitdorks_go" "${INSTALL_STRATEGY}"
#github-endpoints : https://github.com/gwen001/github-endpoints
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/github-endpoints" -o "${INSTALL_DIR}/github-endpoints" && eval "${INSTALL_POST}" "${INSTALL_DIR}/github-endpoints" "${INSTALL_STRATEGY}"
#gitlab-subdomains : https://github.com/gwen001/gitlab-subdomains
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gitlab-subdomains" -o "${INSTALL_DIR}/gitlab-subdomains" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gitlab-subdomains" "${INSTALL_STRATEGY}"
#gitleaks: https://github.com/gitleaks/gitleaks
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gitleaks" -o "${INSTALL_DIR}/gitleaks" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gitleaks" "${INSTALL_STRATEGY}"
#github-subdomains : https://github.com/gwen001/github-subdomains
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/github-subdomains" -o "${INSTALL_DIR}/github-subdomains" && eval "${INSTALL_POST}" "${INSTALL_DIR}/github-subdomains" "${INSTALL_STRATEGY}"
#glab : https://gitlab.com/gitlab-org/cli
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/glab" -o "${INSTALL_DIR}/glab" && eval "${INSTALL_POST}" "${INSTALL_DIR}/glab" "${INSTALL_STRATEGY}"
#glow
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/glow" -o "${INSTALL_DIR}/glow" && eval "${INSTALL_POST}" "${INSTALL_DIR}/glow" "${INSTALL_STRATEGY}"
#gotator : https://github.com/Josue87/gotator
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gotator" -o "${INSTALL_DIR}/gotator" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gotator" "${INSTALL_STRATEGY}"
#gowitness
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gowitness" -o "${INSTALL_DIR}/gowitness" && eval "${INSTALL_POST}" "${INSTALL_DIR}/gowitness" "${INSTALL_STRATEGY}"
#Gxss : https://github.com/KathanP19/Gxss
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/gxss" -o "${INSTALL_DIR}/Gxss" && eval "${INSTALL_POST}" "${INSTALL_DIR}/Gxss" "${INSTALL_STRATEGY}"
#hakip2host : https://github.com/hakluke/hakip2host
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/hakip2host" -o "${INSTALL_DIR}/hakip2host" && eval "${INSTALL_POST}" "${INSTALL_DIR}/hakip2host" "${INSTALL_STRATEGY}"
#hakrawler
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/hakrawler" -o "${INSTALL_DIR}/hakrawler" && eval "${INSTALL_POST}" "${INSTALL_DIR}/hakrawler" "${INSTALL_STRATEGY}"
#httpx : https://github.com/projectdiscovery/httpx
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/httpx" -o "${INSTALL_DIR}/httpx" && eval "${INSTALL_POST}" "${INSTALL_DIR}/httpx" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/httpx" -o "${INSTALL_DIR_ROOT}/httpx" && eval "${INSTALL_POST}" "${INSTALL_DIR_ROOT}/httpx" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/httpx" -o "${INSTALL_DIR_LOCALH}/httpx" 2>/dev/null && eval "${INSTALL_POST}" "${INSTALL_DIR_LOCALH}/httpx" 2>/dev/null "${INSTALL_STRATEGY}"
#huggingface-cli: https://github.com/huggingface/huggingface_hub
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/huggingface-cli" -o "${INSTALL_DIR}/huggingface-cli" && eval "${INSTALL_POST}" "${INSTALL_DIR}/huggingface-cli" "${INSTALL_STRATEGY}"
#husarnet: https://github.com/husarnet/husarnet
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/husarnet" -o "${INSTALL_DIR}/husarnet" && eval "${INSTALL_POST}" "${INSTALL_DIR}/husarnet" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/husarnet-daemon" -o "${INSTALL_DIR}/husarnet-daemon" && eval "${INSTALL_POST}" "${INSTALL_DIR}/husarnet-daemon" "${INSTALL_STRATEGY}"
#inscope : https://github.com/tomnomnom/hacks/inscope
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/inscope" -o "${INSTALL_DIR}/inscope" && eval "${INSTALL_POST}" "${INSTALL_DIR}/inscope" "${INSTALL_STRATEGY}"
#interactsh-client : https://github.com/projectdiscovery/interactsh
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/interactsh-client" -o "${INSTALL_DIR}/interactsh-client" && eval "${INSTALL_POST}" "${INSTALL_DIR}/interactsh-client" "${INSTALL_STRATEGY}"
#jc : https://github.com/kellyjonbrazil/jc
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/jc" -o "${INSTALL_DIR}/jc" && eval "${INSTALL_POST}" "${INSTALL_DIR}/jc" "${INSTALL_STRATEGY}"
#jq : https://github.com/jqlang/jq
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/jq" -o "${INSTALL_DIR}/jq" && eval "${INSTALL_POST}" "${INSTALL_DIR}/jq" "${INSTALL_STRATEGY}"
#katana : https://github.com/projectdiscovery/katana
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/katana" -o "${INSTALL_DIR}/katana" && eval "${INSTALL_POST}" "${INSTALL_DIR}/katana" "${INSTALL_STRATEGY}"
#mantra : https://github.com/MrEmpy/mantra
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/mantra" -o "${INSTALL_DIR}/mantra" && eval "${INSTALL_POST}" "${INSTALL_DIR}/mantra" "${INSTALL_STRATEGY}"
#mapcidr : https://github.com/projectdiscovery/mapcidr
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/mapcidr" -o "${INSTALL_DIR}/mapcidr" && eval "${INSTALL_POST}" "${INSTALL_DIR}/mapcidr" "${INSTALL_STRATEGY}"
#massdns
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/massdns" -o "${INSTALL_DIR}/massdns" && eval "${INSTALL_POST}" "${INSTALL_DIR}/massdns" "${INSTALL_STRATEGY}"
#micro
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/micro" -o "${INSTALL_DIR}/micro" && eval "${INSTALL_POST}" "${INSTALL_DIR}/micro" "${INSTALL_STRATEGY}"
#mksub
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/mksub" -o "${INSTALL_DIR}/mksub" && eval "${INSTALL_POST}" "${INSTALL_DIR}/mksub" "${INSTALL_STRATEGY}"
#ncdu : https://dev.yorhel.nl/ncdu
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ncdu" -o "${INSTALL_DIR}/ncdu" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ncdu" "${INSTALL_STRATEGY}"
#nmapurls : https://github.com/sdcampbell/nmapurls
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/nmapurls" -o "${INSTALL_DIR}/nmapurls" && eval "${INSTALL_POST}" "${INSTALL_DIR}/nmapurls" "${INSTALL_STRATEGY}"
#nomore403 : https://github.com/devploit/nomore403
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/nomore403" -o "${INSTALL_DIR}/nomore403" && eval "${INSTALL_POST}" "${INSTALL_DIR}/nomore403" "${INSTALL_STRATEGY}"
#notify : https://github.com/projectdiscovery/notify
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/notify" -o "${INSTALL_DIR}/notify" && eval "${INSTALL_POST}" "${INSTALL_DIR}/notify" "${INSTALL_STRATEGY}"
#nuclei : https://github.com/projectdiscovery/nuclei
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/nuclei" -o "${INSTALL_DIR}/nuclei" && eval "${INSTALL_POST}" "${INSTALL_DIR}/nuclei" "${INSTALL_STRATEGY}"
#ouch : https://github.com/ouch-org/ouch
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ouch" -o "${INSTALL_DIR}/ouch" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ouch" "${INSTALL_STRATEGY}"
#pencode : https://github.com/ffuf/pencode
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/pencode" -o "${INSTALL_DIR}/pencode" && eval "${INSTALL_POST}" "${INSTALL_DIR}/pencode" "${INSTALL_STRATEGY}"
#pipetty: https://github.com/kilobyte/colorized-logs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/pipetty" -o "${INSTALL_DIR}/pipetty" && eval "${INSTALL_POST}" "${INSTALL_DIR}/pipetty" "${INSTALL_STRATEGY}"
#ppmap : https://github.com/kleiton0x00/ppmap
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ppmap" -o "${INSTALL_DIR}/ppmap" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ppmap" "${INSTALL_STRATEGY}"
#puredns : https://github.com/d3mondev/puredns
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/puredns" -o "${INSTALL_DIR}/puredns" && eval "${INSTALL_POST}" "${INSTALL_DIR}/puredns" "${INSTALL_STRATEGY}"
#qsreplace : https://github.com/tomnomnom/qsreplace
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/qsreplace" -o "${INSTALL_DIR}/qsreplace" && eval "${INSTALL_POST}" "${INSTALL_DIR}/qsreplace" "${INSTALL_STRATEGY}"
#rclone
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/rclone" -o "${INSTALL_DIR}/rclone" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rclone" "${INSTALL_STRATEGY}"
#resdns
 eval "${INSTALL_PRE}" "https://raw.githubusercontent.com/Azathothas/Arsenal/main/resdns/resdns.sh" -o "${INSTALL_DIR}/resdns" && eval "${INSTALL_POST}" "${INSTALL_DIR}/resdns" "${INSTALL_STRATEGY}"
#ripgen : https://github.com/resyncgg/ripgen
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ripgen" -o "${INSTALL_DIR}/ripgen" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ripgen" "${INSTALL_STRATEGY}"
#ripgrep : 
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ripgrep" -o "${INSTALL_DIR}/ripgrep" && eval "${INSTALL_POST}" "${INSTALL_DIR}/ripgrep" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/ripgrep" -o "${INSTALL_DIR}/rg" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rg" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/rga" -o "${INSTALL_DIR}/rga" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rga" "${INSTALL_STRATEGY}"
#roboxtractor : https://github.com/Josue87/roboxtractor
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/roboxtractor" -o "${INSTALL_DIR}/roboxtractor" && eval "${INSTALL_POST}" "${INSTALL_DIR}/roboxtractor" "${INSTALL_STRATEGY}"
#rsync : https://github.com/RsyncProject/rsync
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/rsync" -o "${INSTALL_DIR}/rsync" && eval "${INSTALL_POST}" "${INSTALL_DIR}/rsync" "${INSTALL_STRATEGY}"
#s3scanner : https://github.com/sa7mon/s3scanner
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/s3scanner" -o "${INSTALL_DIR}/s3scanner" && eval "${INSTALL_POST}" "${INSTALL_DIR}/s3scanner" "${INSTALL_STRATEGY}"
#scopegen
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/scopegen" -o "${INSTALL_DIR}/scopegen" && eval "${INSTALL_POST}" "${INSTALL_DIR}/scopegen" "${INSTALL_STRATEGY}"
#scopeview
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/scopeview" -o "${INSTALL_DIR}/scopeview" && eval "${INSTALL_POST}" "${INSTALL_DIR}/scopeview" "${INSTALL_STRATEGY}"
#shortscan : https://github.com/bitquark/shortscan
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/shortscan" -o "${INSTALL_DIR}/shortscan" && eval "${INSTALL_POST}" "${INSTALL_DIR}/shortscan" "${INSTALL_STRATEGY}"
#shuffledns
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/shuffledns" -o "${INSTALL_DIR}/shuffledns" && eval "${INSTALL_POST}" "${INSTALL_DIR}/shuffledns" "${INSTALL_STRATEGY}"
#smap : https://github.com/s0md3v/smap
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/smap" -o "${INSTALL_DIR}/smap" && eval "${INSTALL_POST}" "${INSTALL_DIR}/smap" "${INSTALL_STRATEGY}"
#sns : https://github.com/sw33tLie/sns
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/sns" -o "${INSTALL_DIR}/sns" && eval "${INSTALL_POST}" "${INSTALL_DIR}/sns" "${INSTALL_STRATEGY}"
#speedtest-go : https://github.com/showwin/speedtest-go
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/speedtest-go" -o "${INSTALL_DIR}/speedtest-go" && eval "${INSTALL_POST}" "${INSTALL_DIR}/speedtest-go" "${INSTALL_STRATEGY}"
#spk
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/spk" -o "${INSTALL_DIR}/spk" && eval "${INSTALL_POST}" "${INSTALL_DIR}/spk" "${INSTALL_STRATEGY}"
#sttr: https://github.com/abhimanyu003/sttr
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/sttr" -o "${INSTALL_DIR}/sttr" && eval "${INSTALL_POST}" "${INSTALL_DIR}/sttr" "${INSTALL_STRATEGY}"
#subfinder : https://github.com/projectdiscovery/subfinder
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/subfinder" -o "${INSTALL_DIR}/subfinder" && eval "${INSTALL_POST}" "${INSTALL_DIR}/subfinder" "${INSTALL_STRATEGY}"
#subjs : https://github.com/lc/subjs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/subjs" -o "${INSTALL_DIR}/subjs" && eval "${INSTALL_POST}" "${INSTALL_DIR}/subjs" "${INSTALL_STRATEGY}"
#subxtract
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/subxtract" -o "${INSTALL_DIR}/subxtract" && eval "${INSTALL_POST}" "${INSTALL_DIR}/subxtract" "${INSTALL_STRATEGY}"
#tailscale : https://github.com/tailscale/tailscale
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tailscale" -o "${INSTALL_DIR}/tailscale" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tailscale" "${INSTALL_STRATEGY}"
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tailscaled" -o "${INSTALL_DIR}/tailscaled" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tailscaled" "${INSTALL_STRATEGY}"
#tlsx : https://github.com/projectdiscovery/tlsx
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/tlsx" -o "${INSTALL_DIR}/tlsx" && eval "${INSTALL_POST}" "${INSTALL_DIR}/tlsx" "${INSTALL_STRATEGY}"
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
#Web-Cache-Vulnerability-Scanner : https://github.com/Hackmanit/Web-Cache-Vulnerability-Scanner
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/web-cache-vulnerability-scanner" -o "${INSTALL_DIR}/Web-Cache-Vulnerability-Scanner" && eval "${INSTALL_POST}" "${INSTALL_DIR}/Web-Cache-Vulnerability-Scanner" "${INSTALL_STRATEGY}"
#wget
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/wget" -o "${INSTALL_DIR}/wget" && eval "${INSTALL_POST}" "${INSTALL_DIR}/wget" "${INSTALL_STRATEGY}"
#wget2
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/wget2" -o "${INSTALL_DIR}/wget2" && eval "${INSTALL_POST}" "${INSTALL_DIR}/wget2" "${INSTALL_STRATEGY}"
#wormhole-rs: https://github.com/magic-wormhole/magic-wormhole.rs
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/wormhole-rs" -o "${INSTALL_DIR}/wormhole-rs" && eval "${INSTALL_POST}" "${INSTALL_DIR}/wormhole-rs" "${INSTALL_STRATEGY}"
#yataf
 eval "${INSTALL_PRE}" "${INSTALL_SRC}/yataf" -o "${INSTALL_DIR}/yataf" && eval "${INSTALL_POST}" "${INSTALL_DIR}/yataf" "${INSTALL_STRATEGY}"
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
