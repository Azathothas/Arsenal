#!/usr/bin/env bash

# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/install_bb_tools_x86_64.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/install_bb_tools_x86_64.sh")

#-------------------------------------------------------------------------------#
set +e ; set -x
export INSTALL_DIR="/usr/local/bin"
#7z  : https://www.7-zip.org/
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/7z" -o "$INSTALL_DIR/7z" && sudo chmod +xwr "$INSTALL_DIR/7z" &
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/7z" -o "/usr/bin/7z" && sudo chmod +xwr "/usr/bin/7z" &
#action-lint
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/actionlint" -o "$INSTALL_DIR/actionlint" && sudo chmod +xwr "$INSTALL_DIR/actionlint" &
#amass : https://github.com/owasp-amass/amass
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/amass" -o "$INSTALL_DIR/amass" && sudo chmod +xwr "$INSTALL_DIR/amass" &
#analyticsrelationships : https://github.com/Josue87/analyticsrelationships
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/analyticsrelationships" -o "$INSTALL_DIR/analyticsrelationships" && sudo chmod +xwr "$INSTALL_DIR/analyticsrelationships" &
#anew
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/anew" -o "$INSTALL_DIR/anew" && sudo chmod +xwr "$INSTALL_DIR/anew" &
#anew-rs : https://github.com/zer0yu/anew
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/anew-rs" -o "$INSTALL_DIR/anew-rs" && sudo chmod +xwr "$INSTALL_DIR/anew-rs" &
#asn
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/asn" -o "$INSTALL_DIR/asn" && sudo chmod +xwr "$INSTALL_DIR/asn" &
#asnmap
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/asnmap" -o "$INSTALL_DIR/asnmap" && sudo chmod +xwr "$INSTALL_DIR/asnmap" &
#b3sum : https://github.com/BLAKE3-team/BLAKE3
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/b3sum" -o "$INSTALL_DIR/b3sum" && sudo chmod +xwr "$INSTALL_DIR/b3sum" &
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/b3sum" -o "/usr/bin/b3sum" && sudo chmod +xwr "/usr/bin/b3sum" &
#brutespray: https://github.com/x90skysn3k/brutespray
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/brutespray" -o "$INSTALL_DIR/brutespray" && sudo chmod +xwr "$INSTALL_DIR/brutespray" &
#btop: https://github.com/aristocratos/btop
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/btop" -o "$INSTALL_DIR/btop" && sudo chmod +xwr "$INSTALL_DIR/btop" &
#cdncheck
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/cdncheck" -o "$INSTALL_DIR/cdncheck" && sudo chmod +xwr "$INSTALL_DIR/cdncheck" &
#cent
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/cent" -o "$INSTALL_DIR/cent" && sudo chmod +xwr "$INSTALL_DIR/cent" & 
#crlfuzz : https://github.com/dwisiswant0/crlfuzz
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/crlfuzz" -o "$INSTALL_DIR/crlfuzz" && sudo chmod +xwr "$INSTALL_DIR/crlfuzz" &
#croc : https://github.com/schollz/croc
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/croc" -o "$INSTALL_DIR/croc" && sudo chmod +xwr "$INSTALL_DIR/croc" &
#crt : https://github.com/cemulus/crt
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/crt" -o "$INSTALL_DIR/crt" && sudo chmod +xwr "$INSTALL_DIR/crt" &
#csvtk
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/csvtk" -o "$INSTALL_DIR/csvtk" && sudo chmod +xwr "$INSTALL_DIR/csvtk" &
#cut-cdn
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/cut-cdn" -o "$INSTALL_DIR/cut-cdn" && sudo chmod +xwr "$INSTALL_DIR/cut-cdn" & 
#dalfox : https://github.com/hahwul/dalfox
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/dalfox" -o "$INSTALL_DIR/dalfox" && sudo chmod +xwr "$INSTALL_DIR/dalfox" &
#delta
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/delta" -o "$INSTALL_DIR/delta" && sudo chmod +xwr "$INSTALL_DIR/delta" &
#dirstat-rs
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ds" -o "$INSTALL_DIR/ds" && sudo chmod +xwr "$INSTALL_DIR/ds" &
#dnstake : https://github.com/pwnesia/dnstake
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/dnstake" -o "$INSTALL_DIR/dnstake" && sudo chmod +xwr "$INSTALL_DIR/dnstake" &
#dnsx : https://github.com/projectdiscovery/dnsx
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/dnsx" -o "$INSTALL_DIR/dnsx" && sudo chmod +xwr "$INSTALL_DIR/dnsx" &
#dsieve : https://github.com/trickest/dsieve
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/dsieve" -o "$INSTALL_DIR/dsieve" && sudo chmod +xwr "$INSTALL_DIR/dsieve" &
#duf
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/duf" -o "$INSTALL_DIR/duf" && sudo chmod +xwr "$INSTALL_DIR/duf" &
#dust
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/dust" -o "$INSTALL_DIR/dust" && sudo chmod +xwr "$INSTALL_DIR/dust" &
#dysk
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/dysk" -o "$INSTALL_DIR/dysk" && sudo chmod +xwr "$INSTALL_DIR/dysk" &
#dust
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/dust" -o "$INSTALL_DIR/dust" && sudo chmod +xwr "$INSTALL_DIR/dust" &
#eget
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/eget" -o "$INSTALL_DIR/eget" && sudo chmod +xwr "$INSTALL_DIR/eget" &
#enumerepo : https://github.com/trickest/enumerepo
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/enumerepo" -o "$INSTALL_DIR/enumerepo" && sudo chmod +xwr "$INSTALL_DIR/enumerepo" &
#epoch : https://github.com/sj14/epoch
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/epoch" -o "$INSTALL_DIR/epoch" && sudo chmod +xwr "$INSTALL_DIR/epoch" &
#ffuf : https://github.com/ffuf/ffuf
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ffuf" -o "$INSTALL_DIR/ffuf" && sudo chmod +xwr "$INSTALL_DIR/ffuf" &
#fget
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/fget" -o "$INSTALL_DIR/fget" && sudo chmod +xwr "$INSTALL_DIR/fget" &
#findomain
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/findomain" -o "$INSTALL_DIR/findomain" && sudo chmod +xwr "$INSTALL_DIR/findomain" &
#freeze
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/freeze" -o "$INSTALL_DIR/freeze" && sudo chmod +xwr "$INSTALL_DIR/freeze" &  
#gau : https://github.com/lc/gau
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gau" -o "$INSTALL_DIR/gau" && sudo chmod +xwr "$INSTALL_DIR/gau" &
#getJS
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/getJS" -o "$INSTALL_DIR/getJS" && sudo chmod +xwr "$INSTALL_DIR/getJS" &
#gf : https://github.com/tomnomnom/gf
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gf" -o "$INSTALL_DIR/gf" && sudo chmod +xwr "$INSTALL_DIR/gf" &
#git-sizer
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/git-sizer" -o "$INSTALL_DIR/git-sizer" && sudo chmod +xwr "$INSTALL_DIR/git-sizer" &
#gitdorks_go : https://github.com/damit5/gitdorks_go
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gitdorks_go" -o "$INSTALL_DIR/gitdorks_go" && sudo chmod +xwr "$INSTALL_DIR/gitdorks_go" &
#github-endpoints : https://github.com/gwen001/github-endpoints
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/github-endpoints" -o "$INSTALL_DIR/github-endpoints" && sudo chmod +xwr "$INSTALL_DIR/github-endpoints" &
#gitlab-subdomains : https://github.com/gwen001/gitlab-subdomains
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gitlab-subdomains" -o "$INSTALL_DIR/gitlab-subdomains" && sudo chmod +xwr "$INSTALL_DIR/gitlab-subdomains" &
#gitleaks: https://github.com/gitleaks/gitleaks
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gitleaks" -o "$INSTALL_DIR/gitleaks" && sudo chmod +xwr "$INSTALL_DIR/gitleaks" &
#github-subdomains : https://github.com/gwen001/github-subdomains
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/github-subdomains" -o "$INSTALL_DIR/github-subdomains" && sudo chmod +xwr "$INSTALL_DIR/github-subdomains" &
#glow
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/glow" -o "$INSTALL_DIR/glow" && sudo chmod +xwr "$INSTALL_DIR/glow" & 
#gotator : https://github.com/Josue87/gotator
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gotator" -o "$INSTALL_DIR/gotator" && sudo chmod +xwr "$INSTALL_DIR/gotator" &
#gowitness
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gowitness" -o "$INSTALL_DIR/gowitness" && sudo chmod +xwr "$INSTALL_DIR/gowitness" &
#Gxss : https://github.com/KathanP19/Gxss
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/gxss" -o "$INSTALL_DIR/Gxss" && sudo chmod +xwr "$INSTALL_DIR/Gxss" &
#hakip2host : https://github.com/hakluke/hakip2host
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/hakip2host" -o "$INSTALL_DIR/hakip2host" && sudo chmod +xwr "$INSTALL_DIR/hakip2host" &
#hakrawler
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/hakrawler" -o "$INSTALL_DIR/hakrawler" && sudo chmod +xwr "$INSTALL_DIR/hakrawler" &
#httpx : https://github.com/projectdiscovery/httpx
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/httpx" -o "$INSTALL_DIR/httpx" && sudo chmod +xwr "$INSTALL_DIR/httpx" &
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/httpx" -o "/usr/bin/httpx" && sudo chmod +xwr "/usr/bin/httpx" &
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/httpx" -o "$HOME/.local/bin/httpx" 2>/dev/null && sudo chmod +xwr "$HOME/.local/bin/httpx" 2>/dev/null &
#inscope : https://github.com/tomnomnom/hacks/inscope
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/inscope" -o "$INSTALL_DIR/inscope" && sudo chmod +xwr "$INSTALL_DIR/inscope" &
#interactsh-client : https://github.com/projectdiscovery/interactsh
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/interactsh-client" -o "$INSTALL_DIR/interactsh-client" && sudo chmod +xwr "$INSTALL_DIR/interactsh-client" &
#katana : https://github.com/projectdiscovery/katana
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/katana" -o "$INSTALL_DIR/katana" && sudo chmod +xwr "$INSTALL_DIR/katana" &
#mantra : https://github.com/MrEmpy/mantra
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/mantra" -o "$INSTALL_DIR/mantra" && sudo chmod +xwr "$INSTALL_DIR/mantra" &
#mapcidr : https://github.com/projectdiscovery/mapcidr
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/mapcidr" -o "$INSTALL_DIR/mapcidr" && sudo chmod +xwr "$INSTALL_DIR/mapcidr" &
#massdns
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/massdns" -o "$INSTALL_DIR/massdns" && sudo chmod +xwr "$INSTALL_DIR/massdns" & 
#micro
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/micro" -o "$INSTALL_DIR/micro" && sudo chmod +xwr "$INSTALL_DIR/micro" &
#mksub
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/mksub" -o "$INSTALL_DIR/mksub" && sudo chmod +xwr "$INSTALL_DIR/mksub" &
#nmapurls : https://github.com/sdcampbell/nmapurls
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/nmapurls" -o "$INSTALL_DIR/nmapurls" && sudo chmod +xwr "$INSTALL_DIR/nmapurls" &
#nomore403 : https://github.com/devploit/nomore403
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/nomore403" -o "$INSTALL_DIR/nomore403" && sudo chmod +xwr "$INSTALL_DIR/nomore403" & 
#notify : https://github.com/projectdiscovery/notify
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/notify" -o "$INSTALL_DIR/notify" && sudo chmod +xwr "$INSTALL_DIR/notify" &
#nuclei : https://github.com/projectdiscovery/nuclei
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/nuclei" -o "$INSTALL_DIR/nuclei" && sudo chmod +xwr "$INSTALL_DIR/nuclei" &
#pencode : https://github.com/ffuf/pencode
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/pencode" -o "$INSTALL_DIR/pencode" && sudo chmod +xwr "$INSTALL_DIR/pencode" &
#ppmap : https://github.com/kleiton0x00/ppmap
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ppmap" -o "$INSTALL_DIR/ppmap" && sudo chmod +xwr "$INSTALL_DIR/ppmap" &
#puredns : https://github.com/d3mondev/puredns
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/puredns" -o "$INSTALL_DIR/puredns" && sudo chmod +xwr "$INSTALL_DIR/puredns" &
#qsreplace : https://github.com/tomnomnom/qsreplace
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/qsreplace" -o "$INSTALL_DIR/qsreplace" && sudo chmod +xwr "$INSTALL_DIR/qsreplace" &
#rclone
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/rclone" -o "$INSTALL_DIR/rclone" && sudo chmod +xwr "$INSTALL_DIR/rclone" &
#resdns
 sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/resdns/resdns.sh" -o "$INSTALL_DIR/resdns" && sudo chmod +xwr "$INSTALL_DIR/resdns" &
#ripgen : https://github.com/resyncgg/ripgen
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ripgen" -o "$INSTALL_DIR/ripgen" && sudo chmod +xwr "$INSTALL_DIR/ripgen" &
#ripgrep : 
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ripgrep" -o "$INSTALL_DIR/ripgrep" && sudo chmod +xwr "$INSTALL_DIR/ripgrep" &
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ripgrep" -o "$INSTALL_DIR/rg" && sudo chmod +xwr "$INSTALL_DIR/rg" &
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/rga" -o "$INSTALL_DIR/rga" && sudo chmod +xwr "$INSTALL_DIR/rga" &
#roboxtractor : https://github.com/Josue87/roboxtractor
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/roboxtractor" -o "$INSTALL_DIR/roboxtractor" && sudo chmod +xwr "$INSTALL_DIR/roboxtractor" &
#s3scanner : https://github.com/sa7mon/s3scanner
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/s3scanner" -o "$INSTALL_DIR/s3scanner" && sudo chmod +xwr "$INSTALL_DIR/s3scanner" &
#scopegen
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/scopegen" -o "$INSTALL_DIR/scopegen" && sudo chmod +xwr "$INSTALL_DIR/scopegen" &
#scopeview
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/scopeview" -o "$INSTALL_DIR/scopeview" && sudo chmod +xwr "$INSTALL_DIR/scopeview" &
#shortscan : https://github.com/bitquark/shortscan
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/shortscan" -o "$INSTALL_DIR/shortscan" && sudo chmod +xwr "$INSTALL_DIR/shortscan" &
#shuffledns
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/shuffledns" -o "$INSTALL_DIR/shuffledns" && sudo chmod +xwr "$INSTALL_DIR/shuffledns" &
#smap : https://github.com/s0md3v/smap
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/smap" -o "$INSTALL_DIR/smap" && sudo chmod +xwr "$INSTALL_DIR/smap" &
#sns : https://github.com/sw33tLie/sns
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/sns" -o "$INSTALL_DIR/sns" && sudo chmod +xwr "$INSTALL_DIR/sns" &
#spk
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/spk" -o "$INSTALL_DIR/spk" && sudo chmod +xwr "$INSTALL_DIR/spk" &
#sttr: https://github.com/abhimanyu003/sttr
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/sttr" -o "$INSTALL_DIR/sttr" && sudo chmod +xwr "$INSTALL_DIR/sttr" &
#subfinder : https://github.com/projectdiscovery/subfinder
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/subfinder" -o "$INSTALL_DIR/subfinder" && sudo chmod +xwr "$INSTALL_DIR/subfinder" &
#subjs : https://github.com/lc/subjs
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/subjs" -o "$INSTALL_DIR/subjs" && sudo chmod +xwr "$INSTALL_DIR/subjs" &
#subxtract
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/subxtract" -o "$INSTALL_DIR/subxtract" && sudo chmod +xwr "$INSTALL_DIR/subxtract" &
#tlsx : https://github.com/projectdiscovery/tlsx
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/tlsx" -o "$INSTALL_DIR/tlsx" && sudo chmod +xwr "$INSTALL_DIR/tlsx" &
#tmux
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/tmux" -o "$INSTALL_DIR/tmux" && sudo chmod +xwr "$INSTALL_DIR/tmux" & 
#tok
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/tok" -o "$INSTALL_DIR/tok" && sudo chmod +xwr "$INSTALL_DIR/tok" &
#trufflehog : https://github.com/trufflesecurity/trufflehog
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/trufflehog" -o "$INSTALL_DIR/trufflehog" && sudo chmod +xwr "$INSTALL_DIR/trufflehog" &
#trurl : https://github.com/curl/trurl
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/trurl" -o "$INSTALL_DIR/trurl" && sudo chmod +xwr "$INSTALL_DIR/trurl" &
#unfurl : https://github.com/tomnomnom/unfurl 
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/unfurl" -o "$INSTALL_DIR/unfurl" && sudo chmod +xwr "$INSTALL_DIR/unfurl" &
#validtoml
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/validtoml" -o "$INSTALL_DIR/validtoml" && sudo chmod +xwr "$INSTALL_DIR/validtoml" &
#Web-Cache-Vulnerability-Scanner : https://github.com/Hackmanit/Web-Cache-Vulnerability-Scanner
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/web-cache-vulnerability-scanner" -o "$INSTALL_DIR/Web-Cache-Vulnerability-Scanner" && sudo chmod +xwr "$INSTALL_DIR/Web-Cache-Vulnerability-Scanner" &
#yataf
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/yataf" -o "$INSTALL_DIR/yataf" && sudo chmod +xwr "$INSTALL_DIR/yataf" &
#Yq
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/yq" -o "$INSTALL_DIR/yq" && sudo chmod +xwr "$INSTALL_DIR/yq" &
#Yj
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/yj" -o "$INSTALL_DIR/yj" && sudo chmod +xwr "$INSTALL_DIR/yj" &
#-------------------------------------------------------------------------------#
set +x ; echo
wait ; reset ; echo 
###END###
