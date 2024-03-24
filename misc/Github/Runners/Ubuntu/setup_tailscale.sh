#!/usr/bin/env bash


##Usage:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Github/Runners/Ubuntu/setup_tailscale.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Github/Runners/Ubuntu/setup_tailscale.sh")


##Sanity Check
#cmds
if ! command -v curl &>/dev/null || ! command -v jq &>/dev/null || ! command -v nohup &>/dev/null ; then
   echo -e "\n[-] FATAL: Install curl coreutils jq moreutils util-linux\n"
fi
#Actions
if [ -z "$GITHUB_REPOSITORY" ] || [ -z "$RUNNER_OS" ] || [ -z "$RUNNER_ARCH" ] || [ -z "$GITHUB_WORKFLOW" ]; then
  echo -e "\n[-] GitHub Workflow ENV VARS aren't present! (Maybe not GH Actions ?)"
 exit 1
else
  TS_NAME="$(echo "$(echo $GITHUB_REPOSITORY | sed 's/\//-/g')-$RUNNER_OS-$RUNNER_ARCH-$(echo $GITHUB_WORKFLOW | sed 's/[^a-zA-Z0-9]/-/g' | sed 's/_/-/g')" | tr '[:upper:]' '[:lower:]' | sed 's/_/-/g' | sed 's/-\+/-/g' | sed 's/^-//;s/-$//' | tr -d '[:space:]')" && export TS_NAME="$TS_NAME"
fi
#TS Key
if [ -z "$TSKEY" ] || [ -z "${TSKEY+x}" ]; then
  echo -e "\n[-] Tailscale Key (TSKEY) isn't Exported\n"
 exit 1
fi

##Install Tailscale
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tailscale" -o "/usr/local/bin/tailscale" && sudo chmod +x "/usr/local/bin/tailscale"
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tailscaled" -o "/usr/local/bin/tailscaled" && sudo chmod +x "/usr/local/bin/tailscaled"
##Addons
#gotty :: https://github.com/sorenisanerd/gotty
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/gotty" -o "/usr/local/bin/gotty" && sudo chmod +x "/usr/local/bin/gotty"
#ttyd :: https://github.com/tsl0922/ttyd
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/ttyd" -o "/usr/local/bin/ttyd" && sudo chmod +x "/usr/local/bin/ttyd"
##tty2web :: https://github.com/kost/tty2web
sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/tty2web" -o "/usr/local/bin/tty2web" && sudo chmod +x "/usr/local/bin/tty2web"

##Connect
nohup sudo tailscaled --tun="userspace-networking" --socks5-server="localhost:9025" --outbound-http-proxy-listen="localhost:9025" --no-logs-no-support >/dev/null 2>&1 &
sudo tailscale up --authkey="$TSKEY" --ssh --hostname="$TS_NAME" --accept-dns="true" --accept-risk="all" --accept-routes="false" --shields-up="false" --advertise-exit-node --reset
TS_IP="$(sudo tailscale ip -4 2>/dev/null | tr -d '\n' | tr -d '[:space:]')" && export TS_IP="$TS_IP"
TS_DNS="$(sudo tailscale status --json | jq -r '.Self.DNSName' | sed 's/\.$//' | tr -d '\n' | tr -d '[:space:]')" && export TS_DNS="$TS_DNS"

##Print Details
echo -e "\n\n[+] TailScale Host : $TS_NAME"
echo -e "[+] TailScale IP : $TS_IP"
echo -e "[+] TailScale DNS : $TS_DNS"
#EOF
