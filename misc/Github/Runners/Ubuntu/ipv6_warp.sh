#!/usr/bin/env bash

##Usage
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Github/Runners/Ubuntu/ipv6_warp.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Github/Runners/Ubuntu/ipv6_warp.sh")

##Note: Run this as a pre-hook before tailscale etc
##Ref:: https://github.com/fscarmen/warp-on-actions/blob/main/action.yml

##Sanity checks
# Check if IPv6 is already configured
if curl -6 -qfskSL --head "http://ipv6.whatismyip.akamai.com" > /dev/null 2>&1; then
    echo -e "\n[+] IPv6 Seems to be already Configured...\n(IPv6: $(curl -qfsSKL 'http://ipv6.whatismyip.akamai.com'))\n"
  exit 0
else
    #Install :: https://pkg.cloudflareclient.com/#
    echo -e "\n[+] Installing Dependencies for Cloudflare WARP\n"
    sudo apt-get update -y && sudo apt-get install apt-transport-https coreutils curl gnupg jq moreutils util-linux -y
    echo -e "\n[+] Installing Cloudflare WARP\n"
    curl -qfsSL "https://pkg.cloudflareclient.com/pubkey.gpg" | sudo gpg --yes --dearmor --output "/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg"
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee "/etc/apt/sources.list.d/cloudflare-client.list"
    sudo apt-get update -y
    sudo apt-get install --reinstall cloudflare-warp -y
    #Configure
    echo -e "\n[+] Setting up Cloudflare WARP (MODE: client warp+doh)\n"
    if [[ -n "$CF_WARP_LICENSE_KEY" ]]; then
       echo -e "\n[+] Using Cloudflare WARP (KEY: $CF_WARP_LICENSE_KEY)\n"
       warp-cli --accept-tos register
       warp-cli --accept-tos set-license "$CF_WARP_LICENSE_KEY"
    else
       echo -e "\n[+] Registering Device on Cloudflare WARP (New Device)\n"
       sudo warp-cli --accept-tos registration new
    fi   
    #Mode
    sudo warp-cli --accept-tos mode "warp+doh"
    #IPv4
    echo -e "\n[+] Configuring Cloudflare WARP (MODE: IPv4)\n"
    sudo warp-cli --accept-tos add-excluded-route "::/0"
    #IPv6
    echo -e "\n[+] Configuring Cloudflare WARP (MODE: IPv6)\n"
    sudo warp-cli --accept-tos add-excluded-route "0.0.0.0/0"
    #Connect
    sudo warp-cli --accept-tos connect && sleep 5
    echo -e "\n[+] Checking Connection...\n"
    echo -e "\n[IPv4]\n$(sudo curl -qfsSL --retry 3 -A 'Mozilla' -4 'https://api.ip.sb/geoip' | jq .)"
    #echo -e "\n[IPv4]\n$(sudo curl -qfsSL --retry 3 -A 'Mozilla' -4 'https://ipinfo.io/json' | jq .)"
    echo -e "\n[IPv6]\n$(sudo curl -qfsSL --retry 3 -A 'Mozilla' -6 'https://api.ip.sb/geoip' | jq .)"
    #Status
    sudo warp-cli status
    sudo warp-cli warp-stats
fi
#EOF
