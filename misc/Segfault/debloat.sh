#!/usr/bin/env bash

# Use:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Segfault/debloat.sh")

#----------------------------------------------------------------------------#
# Removes bloat to get space (~ 15-20 GB)
if grep -q "TOKEN_USED" "/config/self/limits"; then
   echo -e "\n[+] Debloating SegFault-$(hostname)...\n"
   sudo rm "/opt/brave.com" -rf 2>/dev/null
   sudo rm "/opt/microsoft" -rf 2>/dev/null
   sudo rm "/usr/bin/alterx" -rf 2>/dev/null
   sudo rm "/usr/bin/amass" -rf 2>/dev/null
   sudo rm "/usr/bin/bettercap" -rf 2>/dev/null
   sudo rm "/usr/bin/calicoctl" -rf 2>/dev/null
   sudo rm "/usr/bin/cdncheck" -rf 2>/dev/null
   sudo rm "/usr/bin/cilium" -rf 2>/dev/null
   sudo rm "/usr/bin/cosign" -rf 2>/dev/null
   sudo rm "/usr/bin/crictl" -rf 2>/dev/null
   sudo rm "/usr/bin/critest" -rf 2>/dev/null
   sudo rm "/usr/bin/ctr" -rf 2>/dev/null
   sudo rm "/usr/bin/dalfox" -rf 2>/dev/null
   sudo rm "/usr/bin/dnsx" -rf 2>/dev/null
   sudo rm "/usr/bin/eksctl" -rf 2>/dev/null
   sudo rm "/usr/bin/gomuks" -rf 2>/dev/null
   sudo rm "/usr/bin/gopls" -rf 2>/dev/null
   sudo rm "/usr/bin/gowitness" -rf 2>/dev/null
   sudo rm "/usr/bin/helm" -rf 2>/dev/null
   sudo rm "/usr/bin/hubble" -rf 2>/dev/null
   sudo rm /usr/bin/i686* -rf 2>/dev/null
   sudo rm "/usr/bin/interactsh-client" -rf 2>/dev/null
   sudo rm "/usr/bin/katana" -rf 2>/dev/null
   sudo rm "/usr/bin/kustomize" -rf 2>/dev/null
   sudo rm "/usr/bin/loclx" -rf 2>/dev/null
   sudo rm "/usr/bin/mapcidr" -rf 2>/dev/null
   sudo rm "/usr/bin/mongod" -rf 2>/dev/null
   sudo rm "/usr/bin/mongos" -rf 2>/dev/null
   sudo rm "/usr/bin/muraster" -rf 2>/dev/null
   sudo rm "/usr/bin/naabu" -rf 2>/dev/null
   sudo rm "/usr/bin/noseyparker" -rf 2>/dev/null
   sudo rm "/usr/bin/notify" -rf 2>/dev/null
   sudo rm "/usr/bin/nuclei" -rf 2>/dev/null
   sudo rm "/usr/bin/pdtm" -rf 2>/dev/null
   sudo rm "/usr/bin/peirates" -rf 2>/dev/null
   sudo rm "/usr/bin/s3scanner" -rf 2>/dev/null
   sudo rm "/usr/bin/shuffledns" -rf 2>/dev/null
   sudo rm "/usr/bin/silver-client" -rf 2>/dev/null
   sudo rm "/usr/bin/sing-box" -rf 2>/dev/null
   sudo rm "/usr/bin/slimtoolkit" -rf 2>/dev/null
   sudo rm "/usr/bin/sliver-server" -rf 2>/dev/null
   sudo rm "/usr/bin/syft" -rf 2>/dev/null
   sudo rm "/usr/bin/telegram-desktop" -rf 2>/dev/null
   sudo rm "/usr/bin/terraform" -rf 2>/dev/null
   sudo rm "/usr/bin/tetra" -rf 2>/dev/null
   sudo rm "/usr/bin/tlsx" -rf 2>/dev/null
   sudo rm "/usr/bin/trivy" -rf 2>/dev/null
   sudo rm "/usr/bin/uncover" -rf 2>/dev/null
   sudo rm /usr/bin/x86_64* -rf 2>/dev/null
   sudo rm "/usr/bin/zeek" -rf 2>/dev/null
   sudo rm "/usr/bin/zellij" -rf 2>/dev/null
   sudo rm "/usr/lib/bloodhound" -rf 2>/dev/null
   sudo rm "/usr/lib/dradis" -rf 2>/dev/null
   sudo rm "/usr/lib/joplin" -rf 2>/dev/null
   sudo rm "/usr/lib/jvm" -rf 2>/dev/null
   sudo rm "/usr/lib/rizin" -rf 2>/dev/null
   sudo rm "/usr/lib/x86_64-linux-gnu/wine" -rf 2>/dev/null
   sudo rm "/usr/muslcc" -rf 2>/dev/null
   sudo rm "/usr/share/burpsuite" -rf 2>/dev/null
   sudo rm "/usr/share/dotnet" -rf 2>/dev/null
   sudo rm "/usr/share/exploitdb-bin-sploits" -rf 2>/dev/null
   sudo rm "/usr/share/exploitdb-papers" -rf 2>/dev/null
   sudo rm "/usr/share/exploitdb" -rf 2>/dev/null
   sudo rm "/usr/share/ghidra" -rf 2>/dev/null
   sudo rm "/usr/share/maltego" -rf 2>/dev/null
   sudo rm "/usr/share/metasploit-framework" -rf 2>/dev/null
   sudo rm "/usr/share/pwndbg" -rf 2>/dev/null
   sudo rm "/usr/share/seclists" -rf 2>/dev/null
   sudo rm "/usr/share/wordlists" -rf 2>/dev/null
   sudo rm "/usr/share/zaproxy" -rf 2>/dev/null
fi
#----------------------------------------------------------------------------#
