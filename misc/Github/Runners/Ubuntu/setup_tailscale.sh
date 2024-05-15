#!/usr/bin/env bash

##Requirements: bash coreutils curl findutils jq moreutils tailscale tailscaled 

##Usage:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Github/Runners/Ubuntu/setup_tailscale.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Github/Runners/Ubuntu/setup_tailscale.sh")

##Sanity Checks
 #TS Bins
   if ! command -v tailscale &> /dev/null; then
     sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tailscale" -o "/usr/local/bin/tailscale" && sudo chmod +x "/usr/local/bin/tailscale"
     sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tailscaled" -o "/usr/local/bin/tailscaled" && sudo chmod +x "/usr/local/bin/tailscaled"
   fi
 #TS Key
   if [ -z "$TSKEY" ] || [ -z "${TSKEY+x}" ]; then
     echo -e "\n[-] Tailscale Key (TSKEY) isn't Exported\n"
    exit 1
   fi
#ENV
 export TS_SOCK="/var/run/tailscale/tailscaled.sock"
 export TS_S6="etc/s6-overlay/s6-rc.d/tailscaled"
 export TS_SYSTEMD="/lib/systemd/system/tailscaled.service"
##Aux Funcs
 ##Addons
   install_addons()
   {
     #gotty :: https://github.com/sorenisanerd/gotty
     sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/gotty" -o "/usr/local/bin/gotty" && sudo chmod +x "/usr/local/bin/gotty"
     #ttyd :: https://github.com/tsl0922/ttyd
     sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/ttyd" -o "/usr/local/bin/ttyd" && sudo chmod +x "/usr/local/bin/ttyd"
     ##tty2web :: https://github.com/kost/tty2web
     sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tty2web" -o "/usr/local/bin/tty2web" && sudo chmod +x "/usr/local/bin/tty2web"
   }
 export -f install_addons
 ##connect
   ts_connect()
   {
     sudo tailscale up --authkey="$TSKEY" --ssh --hostname="$TS_NAME" --accept-dns="true" --accept-risk="all" --accept-routes="false" --shields-up="false" --advertise-exit-node --reset
   }
 ##Print Details
   ts_status()
   {
    #Get env
     TS_IP="$(sudo tailscale ip -4 2>/dev/null | tr -d '\n' | tr -d '[:space:]')" && export TS_IP="$TS_IP"
     TS_DNS="$(sudo tailscale status --json 2>/dev/null | jq -r '.Self.DNSName' | sed 's/\.$//' | tr -d '\n' | tr -d '[:space:]')" && export TS_DNS="$TS_DNS"
     TS_DAEMON_JSON="$(sudo tailscale status --peers=false --json 2>&1 | awk '/{/{found=1} found{print}')" && export TS_DAEMON_JSON="$TS_DAEMON_JSON"
    #Print 
     echo -e "\n\n[+] TailScale Host : $(sudo tailscale status --self=true --peers=false --json | jq -r '.Self.HostName')"
     sudo tailscale status --peers=false --json 2>/dev/null | jq -r '"Daemon: \(.BackendState)\nConnected: \(.Self.Online)"'
     echo -e "[+] TailScale IP : $TS_IP"
     echo -e "[+] TailScale DNS : $TS_DNS\n\n"
   }
 export -f ts_status
##Main
if command -v tailscale &>/dev/null && command -v tailscaled &>/dev/null && [ -S "${TS_SOCK}" ]; then
   echo -e "\n[+] Existing TailScale Process Found...\n$(ps aux | grep -i 'tailscale')\n"
     ##connect
       ts_connect
     ##addons
       install_addons
     ##Connection Details
       ts_status
else
   echo -e "\n[+] Setting Up TailScale...\n"
     #cmds
       if ! command -v curl &>/dev/null || ! command -v jq &>/dev/null || ! command -v nohup &>/dev/null ; then
          echo -e "\n[-] FATAL: Install curl coreutils jq moreutils util-linux\n"
       fi
     #Actions
       if [ -z "$GITHUB_REPOSITORY" ] || [ -z "$RUNNER_OS" ] || [ -z "$RUNNER_ARCH" ] || [ -z "$GITHUB_WORKFLOW" ]; then
         echo -e "\n[-] GitHub Workflow ENV VARS aren't present! (Maybe not GH Actions ?)"
        #Rely on local env
         TS_NAME="$(echo "$(whoami | sed 's/\//-/g')-$(uname --nodename)-$(uname --machine --kernel-name | sed 's/[^a-zA-Z0-9]/-/g' | sed 's/_/-/g')" | tr '[:upper:]' '[:lower:]' | sed 's/_/-/g' | sed 's/-\+/-/g' | sed 's/^-//;s/-$//' | tr -d '[:space:]' | cut -c 1-60)" && export TS_NAME="$TS_NAME"
       else
         TS_NAME="$(echo "$(echo $GITHUB_REPOSITORY | sed 's/\//-/g')-$RUNNER_OS-$RUNNER_ARCH-$(echo $GITHUB_WORKFLOW | sed 's/[^a-zA-Z0-9]/-/g' | sed 's/_/-/g')" | tr '[:upper:]' '[:lower:]' | sed 's/_/-/g' | sed 's/-\+/-/g' | sed 's/^-//;s/-$//' | tr -d '[:space:]' | cut -c 1-60)" && export TS_NAME="$TS_NAME"
       fi
     ##Sanity checks
      #If a proc already exists 
       if sudo pgrep -f 'tailscaled --tun=userspace-networking' >/dev/null && [ -S "${TS_SOCK}" ]; then
         echo -e "\n[+] Tailscaled Daemon already Exists...\n"
         ##Connect
           sudo tailscale up --authkey="$TSKEY" --ssh --hostname="$TS_NAME" --accept-dns="true" --accept-risk="all" --accept-routes="false" --shields-up="false" --advertise-exit-node --reset
       else
         ##If using s6-svc (in a container), attempt to restart
           if command -v s6-svc &>/dev/null && [ -d "/command" ] && [ -d "${TS_S6}" ] && [ ! -S "${TS_SOCK}" ]; then
             echo -e "\n[+] Initializing Tailscaled Daemon (s6-overlays)...\n"
              sudo "$(command -v s6-svc)" -u "${TS_S6}" 2>/dev/null
              sudo "$(command -v s6-svc)" -r "${TS_S6}" 2>/dev/null ; sleep 05
              ts_connect 2>/dev/null
           fi
         ##If using systemctl (in a container), attempt to restart
           if command -v systemctl &>/dev/null && [ -s "${TS_SYSTEMD}" ] && [ ! -S "${TS_SOCK}" ]; then
             echo -e "\n[+] Initializing Tailscaled Daemon (systemd)...\n"
              sudo systemctl daemon-reload 2>/dev/null
              sudo systemctl enable "tailscaled.service" --now 2>/dev/null
              sudo systemctl restart "tailscaled.service" 2>/dev/null ; sleep 05
              sudo systemctl list-unit-files --type=service | grep -i "tailscale"
              sudo systemctl status "tailscaled.service"
              ts_connect 2>/dev/null
           fi
         ##If all fails, then install manually
          TS_DAEMON_STAT="$(sudo tailscale status --peers=false --json 2>&1 | awk '{ if (!found && !/{/) print; if (!found && /{/) found=1 }')" && export TS_DAEMON_STAT="$TS_DAEMON_STAT"
          if echo "$TS_DAEMON_STAT" | grep -qiE 'failed|systemctl|connect'; then
             echo -e "\n[+] Initializing Tailscaled Daemon (nohup)...\n"
              sudo pgrep -f 'tailscaled --tun=userspace-networking' | xargs sudo kill -9 2>/dev/null
              sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tailscale" -o "/usr/local/bin/tailscale" && sudo chmod +x "/usr/local/bin/tailscale"
              sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tailscaled" -o "/usr/local/bin/tailscaled" && sudo chmod +x "/usr/local/bin/tailscaled"
            ##Connect
              nohup sudo tailscaled --tun="userspace-networking" --socks5-server="localhost:9025" --outbound-http-proxy-listen="localhost:9025" --no-logs-no-support >/dev/null 2>&1 &
              ts_connect 2>/dev/null
          fi
       fi
     ##addons
       install_addons
     ##Connection Details
       ts_status
fi
#END
unset TSKEY TS_S6 TS_SOCK TS_SYSTEMD
#EOF
