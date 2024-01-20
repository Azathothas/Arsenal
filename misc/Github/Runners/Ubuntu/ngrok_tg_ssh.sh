#!/usr/bin/env bash

#Run:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Github/Runners/Ubuntu/ngrok_tg_ssh.sh")

#----------------------------------------------------------------------------#
## ENV:VARS
##REQUIRED: NGROK_TOKEN && TG_BOT_AUTH
#NGROK
# 1 Tunnel per TOKEN
# READ From SECRETS --> ${{ secrets.NGROK_TOKEN }}
#export NGROK_TOKEN="2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAs"
#TG-Notif
#READ From SECRETS --> ${{ secrets.TG_BOT_AUTH }}
#Me
#export TG_BOT_AUTH="AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
##Inventory
#export TG_BOT_AUTH="SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
##Loonix
#TG_BOT_AUTH="SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
#Topic == Copy topic link
#export LOONIX_TOPIC_ID="2949"
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
# HOST_IP | REGION
HOST_IP="$(curl --ipv4 -qfskSL http://ipv4.whatismyip.akamai.com | sed 's/[[:space:]]*$//' )" && export HOST_IP="$HOST_IP"
HOST_REGION="$(curl --ipv4 -qfskSL "http://ip-api.com/json/" | jq -r '"\(.country | gsub(" "; "-"))-\(.city | gsub(" "; "-"))"')" && export HOST_REGION="$HOST_REGION"
# Generate Initial Body for TG_BOT
# Create Markdown Body : https://core.telegram.org/bots/api#markdownv2-style
 # Assume archey is installed
 if command -v "archey" &>/dev/null; then
   # When piped to STDOUT, archey strips ansii colors
    archey 2>/dev/null | ansi2txt | tee "/tmp/archey.log"
 else
   # Use Pure Bash neoFetch
    echo -e "\nHostname: $(hostname)\nUser: $(whoami) $([ "$EUID" -ne 0 ] && echo '(NOT root)' || echo '(root)')\nSudo: $(command -v sudo >/dev/null 2>&1 && echo 'Installed' || echo 'Not Installed/Available')\nUptime: $(uptime -p 2>/dev/null || uptime | awk '{sub(/,$/, "", $3); print $3}')\nOS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | sed 's/"//g') ($(cat /etc/os-release | grep ID_LIKE | cut -d= -f2 | sed 's/"//g'))\nArchitecture: $(uname -m)\nKernel: $(uname -r)\nPackage Manager: $(cmds=$(for cmd in apk apt brew conda dnf emerge eopkg flatpak guix installer nix pacman pacman4 pisi pkg pkgutil port snap swupd tdnf xbps yum zypper; do command -v "$cmd" >/dev/null && printf "%s," "$cmd"; done) ; echo "${cmds%,}")\nSystem: $(ps -p 1 -o comm=)\nShell: $(echo "$SHELL")\nCPU: $(grep -c ^processor /proc/cpuinfo) x $(grep -m1 "model name" /proc/cpuinfo | cut -d: -f2 ) @ $(grep -m1 "cpu MHz" /proc/cpuinfo | cut -d: -f2 | tr -d '[:space:]') MHz\nRAM: $(free -h | awk '/^Mem:/ {print $3 "/" $2}')\nDisk: $(df -h 2>/dev/null | awk '/^\/dev\// {if (line) line = line " | "; line = line $1"("$6")" " " $3 "/" $2 " (" $5 " used)"} END {print line}')\nIPv4: $(curl -qfsSL "http://ipv4.whatismyip.akamai.com" 2>/dev/null || echo 'Failed, Maybe no Curl?')\n" | tee "/tmp/archey.log"
 fi  
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#ngrok
 #END
 pgrep -f "ngrok" | xargs kill -9 2>/dev/null
 #Install
 sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ngrok" -o "/usr/local/bin/ngrok" || curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/ngrok" -o "$HOME/bin/ngrok"
 sudo chmod +xwr "/usr/local/bin/ngrok" || chmod +xwr "$HOME/bin/ngrok"
  #AUTH_TOKEN
  #Default: "$HOME/.config/ngrok/ngrok.yaml"
  NGROK_CONFIG="$(mktemp)" && NGROK_CONFIG="$NGROK_CONFIG"
  echo -e "version: \"2\"\nauthtoken: $NGROK_TOKEN\n" > "$NGROK_CONFIG"
  #Start
  NGROK_LOG="$(mktemp)" && export NGROK_LOG="$NGROK_LOG"
  ngrok tcp 22 --config="$NGROK_CONFIG" --log="$NGROK_LOG" --log-format="json" > /dev/null 2>&1 &
  sleep 10
  #ngrok_env
  NGROK_TCP_ADDRESS="$(jq -r '.url' $NGROK_LOG | grep -v 'null' | sed 's|tcp://||g' | tail -n 1)" && export NGROK_TCP_ADDRESS="$NGROK_TCP_ADDRESS"
  NGROK_TCP_HOST="$(echo $NGROK_TCP_ADDRESS | awk -F: '{print $1}')" && NGROK_TCP_HOST="$NGROK_TCP_HOST"
  NGROK_TCP_PORT="$(echo $NGROK_TCP_ADDRESS | awk -F: '{print $2}')" && export NGROK_TCP_PORT="$NGROK_TCP_PORT"
  #ngrok_ssh
  SSHKEY="$(cat $HOME/.ssh/id_rsa)" && export SSHKEY="$SSHKEY"
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#TG_BOT_BODY
 pip install apprise --upgrade > /dev/null 2>&1
 # Generate Host Details
  echo -e "*🎁 Treats 🎁* : 🖥️ Ephemeral GH Actions VM 🖥️ ➼ (Github)" > "/tmp/TG_BOT_0.md"
  echo -e "*Cluster* : BeeHive 🔆🐝" >> "/tmp/TG_BOT_0.md"
#TIME
  END_TIME="$(( $(date +%s) + 5*3600 + 30*60 ))"
  END_TIME_NPT=$(TZ="Asia/Kathmandu" date -d "@$END_TIME" "+%Y-%m-%d %I:%M:%S %p Nepal TIME")
  SAFE_END_TIME_NPT="$(echo $END_TIME_NPT | sed 's/[ -]/_/g; s/:/_/g')"
  echo -e '\n```bash' >> "/tmp/TG_BOT_0.md"
  #Add Banner
  echo -e "$(cat /tmp/archey.log)\n" >> "/tmp/TG_BOT_0.md"
  #Traffic
  echo -e "\n[+] Origin Traffic: $HOST_IP ($HOST_REGION)" >> "/tmp/TG_BOT_0.md"
  #Time
  echo -e "\n[+] Ends AT: $SAFE_END_TIME_NPT" >> "/tmp/TG_BOT_0.md"
  echo -e "[+] Uptime: $(uptime --pretty)\n" >> "/tmp/TG_BOT_0.md"
  echo -e '```' >> "/tmp/TG_BOT_0.md"
#Send Notif
 #apprise "tgram://$TG_BOT_AUTH/?topic=$LOONIX_TOPIC_ID&format=markdown" -vv -b "$(cat "/tmp/TG_BOT_0.md")"
 apprise "tgram://$TG_BOT_AUTH/?format=markdown" -vv -b "$(cat "/tmp/TG_BOT_0.md")"
#SSH-Windows
  echo -e '\n```powershell' > "/tmp/TG_BOT_WINDOWS.md"
  echo -e "\n[+] SSH-Windows:\n" >> "/tmp/TG_BOT_WINDOWS.md"
  echo -e '!#Windows Powershell' >> "/tmp/TG_BOT_WINDOWS.md"
  echo -e "\$env:SSHKEY=\"$SSHKEY\"" >> "/tmp/TG_BOT_WINDOWS.md"
  echo -e "\$env:SSHKEY = \"\$(\$env:SSHKEY | Out-File \"\$env:TEMP\ssh_key.pem\" -Force; \"\$env:TEMP\ssh_key.pem\")\"" >> "/tmp/TG_BOT_WINDOWS.md"
  echo -e "\n[+] Connect:" >> "/tmp/TG_BOT_WINDOWS.md"
  echo -e "ssh -i "\"\$env:SSHKEY\"" \"runner@$NGROK_TCP_HOST\" -p \"$NGROK_TCP_PORT\" -o \"StrictHostKeyChecking=no\"" >> "/tmp/TG_BOT_WINDOWS.md"
  echo -e "\n#After Logged In:\nsource \"\$HOME/.bashrc\"" >> "/tmp/TG_BOT_WINDOWS.md"
  echo -e '```' >> "/tmp/TG_BOT_WINDOWS.md"
#Send Notif
 #apprise "tgram://$TG_BOT_AUTH/?topic=$LOONIX_TOPIC_ID&format=markdown" -vv -b "$(cat "/tmp/TG_BOT_WINDOWS.md")"
 apprise "tgram://$TG_BOT_AUTH/?format=markdown" -vv -b "$(cat "/tmp/TG_BOT_WINDOWS.md")"
#SSH-Linux
  echo -e '\n```bash' > "/tmp/TG_BOT_LINUX.md"
  echo -e "\n[+] SSH-Linux:\n" >> "/tmp/TG_BOT_LINUX.md"
  echo -e '!#Linux' >> "/tmp/TG_BOT_LINUX.md"
  echo -e 'export SSHKEY="$(mktemp)"' >> "/tmp/TG_BOT_LINUX.md"
  echo -e "echo \"$SSHKEY\" > "\"\$SSHKEY\""" >> "/tmp/TG_BOT_LINUX.md"
  echo -e "\n[+] Connect:\n" >> "/tmp/TG_BOT_LINUX.md"
  echo -e "ssh -i "\"\$SSHKEY\"" \"runner@$NGROK_TCP_HOST\" -p \"$NGROK_TCP_PORT\" -o \"StrictHostKeyChecking=no\"" >> "/tmp/TG_BOT_LINUX.md"
  echo -e "\n#After Logged In:\nsource \"\$HOME/.bashrc\"" >> "/tmp/TG_BOT_LINUX.md"
  echo -e '```' >> "/tmp/TG_BOT_LINUX.md"
#Send Notif
 #apprise "tgram://$TG_BOT_AUTH/?topic=$LOONIX_TOPIC_ID&format=markdown" -vv -b "$(cat "/tmp/TG_BOT_LINUX.md")"
 apprise "tgram://$TG_BOT_AUTH/?format=markdown" -vv -b "$(cat "/tmp/TG_BOT_LINUX.md")"
#----------------------------------------------------------------------------#
