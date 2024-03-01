WIP
---
- #### Info
> - https://azure.microsoft.com/en-us/free/students/ >> Start Free
> 
[B Series Machines](https://azure.microsoft.com/en-us/blog/introducing-b-series-our-new-burstable-vm-size/) operate on [cpu-credit-model](https://learn.microsoft.com/en-us/azure/virtual-machines/b-series-cpu-credit-model/b-series-cpu-credit-model) & are [burstable](https://learn.microsoft.com/en-us/azure/virtual-machines/disk-bursting). What this means is, they will auto scale down (save/accumulate credits) when resources aren't being used and then scale up (use saved credit) again when demanded. A **reboot** **will `reset` all credits**.

**More**:
> - https://www.youtube.com/watch?v=zfYDzsa8y-o
> - https://www.youtube.com/watch?v=M0Qn69xEBkk
> - https://www.onenet.co.nz/our-resources/babbling-about-azure-b-series-burstable-vms/
> - https://www.reddit.com/r/AZURE/comments/fhgx0i/anyone_using_b_series_instances_in_azure/
> - https://www.reddit.com/r/AZURE/comments/8e9ug1/is_there_a_caveat_with_the_b_series_machines/
> - https://www.reddit.com/r/AZURE/comments/11o1mug/why_is_my_b8ms_azure_vm_too_slow/
---
- https://azureprice.net/ --> Updated Prices
- #### Specs & Comparison
| VM Size | Type | vCPUs | RAM (GiB) | [Data Disks](https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview#data-disk) | [Max IOPS](https://blog.purestorage.com/purely-technical/an-analysis-of-io-size-modalities-on-pure-storage-flasharrays/) | [Temp Storage (GiB)](https://www.cloudelicious.net/azure-vms-and-their-temporary-storage/) | Cost/Month | Comments (Remarks)|
|---------|------|-------|-----------|------------|----------|--------------------|------------|-------------------|
| [**`B1ls`**](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes-b-series-burstable) | General purpose | 1 | 0.5 | 2 | 320 | 4 | **`$4.96`** `~ 60$/Year` ($100 Credits last for 12 months) | Cheapest (Mini _Always On VPS/VPN_) Can Run Multiples|
| [**`B1s`**](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes-b-series-burstable) | General purpose | 1 | 1 | 2 | 320 | 4 | **`$9.93`** `~ 120$/Year`  | **`2x B1ls`** `Always Online` --> **`11 Months`** [`99$ ==> 10 Months` + `30 Days` (750 Hrs because marked as free services eligible)] |
| [**`B2ts_v2`**](https://learn.microsoft.com/en-us/azure/virtual-machines/bsv2-series) | General purpose | 2 | 1 | 4 | 3750 | 0 | **`$9.93`** `~ 120$/Year`  | `2x` `vCPU RAM` than `B1s`but exact same specs as `B2ats_v2` but no free tier & higher price. **Avoid** |
| [**`B2ats_v2`**](https://learn.microsoft.com/en-us/azure/virtual-machines/bsv2-series) | General purpose | 2 | 1 | 4 | 3750 | 0 | **`$8.98`** `~ 107$/Year` | Better & Performant than `B1s`. `Always Online` --> **`1 Year`** [`99$ ==> 11 Months` + `30 Days` (750 Hrs because marked as free services eligible)] |
---
- #### Examples & Use Cases
> - **Dev Setup**
> > - Note: Depending upon availability in the region, the vm type may not be available. Either request for quota, choose another region or wait for it to become available again.
> > - Also, prices sometimes vary by upto 5$ depending on the region, for the same VM
> ![image](https://github.com/Azathothas/Arsenal/assets/58171889/ddb0a1f0-1c95-42a2-bb56-29e618ffb49f)
> ![image](https://github.com/Azathothas/Arsenal/assets/58171889/bf4b9c5c-5643-4ea9-b98b-56e19e0b5695)

> - **Media Server**
>
> --- 
> - **VPN**
> > 1. [Home](https://portal.azure.com/) >> **Create a Resource**
> > ```bash
> > !# Keep Everything as Default, only Change the following
> > Vitual Machine Name: Name of your machine, this will be the hostname ($hostname)
> > #Example: b1ls-debian-ebarrow-sweden-vpn # This is an example name, choose something shorter or easy to remember
> > Region: Choose where the price is lowest, or where you want the IP Address to be.
> > Availability Options: No Infrastructure Redundancy Required
> > Security Type: Standard
> > Image: Debian 12 "BookWorm" - x64 Gen2 #(Click `See All Images` >> Search: Debian >> Debian 12 Bookworm >> Debian 12 "BookWorm" - x64 Gen2
> > VM Architecture: x64
> > Size: Standard_B1ls - 1 vcpu 0.5 GiB Memory #Click `See all sizes` >> Search: b1ls >> Select B1ls 1vCPU 0.5 GiB Memory
> >
> > !# While you can choose ssh public keys, it will be a hassle if you have to login from diff machines
> > # But Choosing Passwords will open you to password bruteforce attempts.
> > # So either choose a high entropy passwordmanager-generated password, or use ssh public keys
> > # You are responsible if you choose a weak password and get shelled
> > Username: azureuser #This is what you will use to login, you may change this, but must remember
> >
> > Public Inbound Ports: Allow Selected Ports ( SSH 22 )
> > # Note: You may choose to disable this, as you can always ssh using web azure portal/TailScale anyway 
> > 
> > ```
> > ---
> > 2. **Next**: **`Disks`**
> > ```bash
> > Encryption at Host : No (Unticked) #May not even be enabled in the first place, just leave t be 
> > OS Disk Size: Image Default
> > OS Disk Type: Standard SSD (locally-redundant-storage)
> > Delete with VM: (Ticked) ✓
> > Key Management: Platform-managed Key
> > Enable Ultra Disk Compatibility : Unticked
> > ```
> > ---
> > 3. **`Review`** + **`Create`** >> **`Create`**
> > > - Wait for a few minutes for deployment to succeed
> > ---
> > 4. [**All Resources**](https://portal.azure.com/#view/HubsExtension/BrowseAll/resourceType/microsoft.resources%2Fresources) >> Click **`$VM_NAME`** >> Copy **`Public_IP`** >> **`SSH`**
> > ---
> > 6. `Setup`
> > ```bash
> > #-------------------------------------------------------------------------------------------------#
> > !# CoreUtils
> > sudo apt-get update -y ; sudo apt-get dist-upgrade -y ; sudo apt-get upgrade -y
> > !# May need to run this Twice
> > sudo apt install autoconf automake autopoint binutils bison build-essential ca-certificates coreutils curl dos2unix git gcc htop flex file jq lsof moreutils tmux wget -y
> > !# Networking
> > sudo apt-get install dnsutils 'inetutils*' net-tools netcat-traditional -y
> > sudo apt-get install 'iputils*' -y
> > !# Fix Perms for ping
> > sudo setcap cap_net_raw+ep "$(which ping)"
> > 
> > #-------------------------------------------------------------------------------------------------#
> > ❯ !# Ip-Forwarding
> > echo 'net.ipv4.ip_forward = 1' | sudo tee -a "/etc/sysctl.conf"
> > echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a "/etc/sysctl.conf"
> > sudo sysctl -p "/etc/sysctl.conf"
> > #-------------------------------------------------------------------------------------------------#
> > 
> > #-------------------------------------------------------------------------------------------------#
> > ❯ !# Addons
> > # eget : https://github.com/zyedidia/eget
> > sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/eget" -o "/usr/local/bin/eget" ; sudo chmod +xwr "/usr/local/bin/eget"
> > # 7z : https://www.7-zip.org/
> > sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/7z" -o "/usr/local/bin/7z" ; sudo chmod +xwr "/usr/local/bin/7z" ; 7z -h
> > # btop : https://github.com/aristocratos/btop
> > sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/btop" -o "/usr/local/bin/btop" ; sudo chmod +xwr "/usr/local/bin/btop" ; btop -h
> > # croc : https://github.com/schollz/croc
> > sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/croc" -o "/usr/local/bin/croc" ; sudo chmod +xwr "/usr/local/bin/croc" ; croc -h
> > # speedtest-go : https://github.com/showwin/speedtest-go
> > sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/speedtest-go" -o "/usr/local/bin/speedtest-go" ; sudo chmod +xwr "/usr/local/bin/speedtest-go" ; speedtest-go --help
> > #-------------------------------------------------------------------------------------------------#
> > 
> > #-------------------------------------------------------------------------------------------------#
> > ❯ !# x11-Forwarding
> > sudo apt-get update -y && sudo apt-get install xauth -y
> > touch "$HOME/.Xauthority"
> > !# Edit config
> > sudo nano "/etc/ssh/sshd_config"
> > `
> > AllowAgentForwarding yes
> > AllowTcpForwarding yes
> > PrintMotd no
> > PrintLastLog yes
> > TCPKeepAlive yes
> > X11Forwarding yes
> > `
> > !# Restart SSHD
> > sudo systemctl status sshd
> > sudo systemctl reload ssh.service ; sudo systemctl reload sshd.service
> > sudo service sshd reload ; sudo service sshd restart
> > sudo systemctl status sshd
> >
> > !# logout & log back in
> > logout
> > ```
> > ---
> > 7. `config`
> > ```bash
> > #-------------------------------------------------------------------------------------------------#
> > ❯ !# Gost (Required) #For Tunnels & Proxies
> > #Install
> > sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Static-Binaries/main/gost/gost_amd_x86_64_Linux" -o "/usr/local/bin/gost" ; sudo chmod +xwr "/usr/local/bin/gost"
> >
> > #Start
> > nohup sudo gost -L "http://:13000" -L "https://:13001" -L "http2://:13002" -L "kcp://:13003?tcp=true" -L "mtls://:13004" -L "mws://:13005" -L "mwss://:13006" -L "quic://:13007" -L "sni+tls://:13008" -L "socks5://:13009" -L "ss://gost:gost@:13010" -L "ss+kcp://gost:gost@:13011" -L "ss+tls://gost:gost@:13012" -L "ss2://gost:gost@:13013" >/dev/null 2>&1 &
> >
> > #Check
> > sudo netstat -tulepn | grep -i "gost"
> > 
> > !#Connect Info:
> > ::13000 --> HTTP_PROXY
> > ::13001 --> HTTPS_PROXY
> > ::13009 --> SOCKS5_PROXY
> > 
> > #TailScale
> > TAILSCALE_IP="$(sudo tailscale ip -4)" ; export TAILSCALE_IP="$TAILSCALE_IP" && echo -e "\n[+] TailScale IP: $TAILSCALE_IP\n"
> > # Or use Magic DNS
> > --> "$TAILSCALE_IP:$GOST_PORT"
> > --> "$TAILSCALE_DNS:$GOST_PORT"
> > 
> > Zerotier IP: https://my.zerotier.com/network/$NETWORK_ID
> > ZEROTIER_IP="$(ip addr | grep -i 'zt' -A 10 | grep -i 'inet' | grep -iv 'inet6' | awk '{print $2}' | cut -f1 -d'/')" ; export ZEROTIER_IP="$ZEROTIER_IP"  && echo -e "\n[+] Zerotier IP: $ZEROTIER_IP\n"
> > ## This doesn't work: https://github.com/zerotier/ZeroTierOne/issues/1116 , and instead prints local port 
> > #ZEROTIER_IP="$(sudo zerotier-cli info -j | jq -r '.config.settings.listeningOn[]' | grep -iv ':\|100'| awk -F'/' '{print $1}' | sort -u)" ; export ZEROTIER_IP="$ZEROTIER_IP"  && echo -e "\n[+] Zerotier IP: $ZEROTIER_IP\n"
> > --> "$ZEROTIER_IP:$GOST_PORT"
> > #-------------------------------------------------------------------------------------------------#
> > 
> > #-------------------------------------------------------------------------------------------------#
> > ❯ !# TailScale (Required) #For Remote Access + Management
> > curl -qfsSL "https://tailscale.com/install.sh" | sudo bash -s -- -h
> > # Login & Connect Device
> > sudo tailscale login
> > # Check Status
> > sudo tailscale status --active --peers="false" ; sudo tailscale netcheck
> > 
> > !# Setup as exit node && advertise route
> > #Find Subnet Range, Usually smth like 10.0.0.0/16
> > SUBNET="$(ip a show dev eth0 | awk '/inet[^6]/ && !/127\.0\.0\.1/ {gsub(/\/[0-9]*/, "/16", $2); split($2, a, "."); a[4]=0; print a[1]"."a[2]"."a[3]"."a[4]"/16"}' | awk '/^10\./ || /^172\.(1[6-9]|2[0-9]|3[0-1])\./ || /^192\.168\./')" && echo "$SUBNET"
> > 
> > sudo tailscale up --ssh --advertise-routes="$SUBNET" --advertise-exit-node --accept-dns="true" --accept-routes="false" --accept-risk="all" --shields-up="false" --reset
> > # Go to https://login.tailscale.com/admin/machines >> $Machine_Name >> Edit Route Settings >> Use as Exit Node
> > # Also $Machine_Name >> Subnets >> Review >> Enable
> > # Also Disable Key Expiry
> > 
> > #-------------------------------------------------------------------------------------------------#
> >
> > #-------------------------------------------------------------------------------------------------#
> > ❯ !# Twingate (Optional) #Fastest Speed
> > curl -qfsSLO "https://binaries.twingate.com/connector/setup.sh" && sudo bash "./setup.sh"
> >
> > # Connect
> > TWINGATE_ACCESS_TOKEN="$TOKEN" TWINGATE_REFRESH_TOKEN="$REFERESH_TOKEN" TWINGATE_NETWORK="$TWINGATE_USERNAME" TWINGATE_LABEL_HOSTNAME="$(hostname)" nohup "twingate-connector" > "/tmp/tg-logfile.log" 2>&1 &
> > #-------------------------------------------------------------------------------------------------#
> >
> > #-------------------------------------------------------------------------------------------------#
> > ❯ !# ZeroTier (Recommended) #Faster than TailScale
> > export DEBIAN_FRONTEND="noninteractive"
> > curl -qfsSL "https://install.zerotier.com" | sudo bash
> >
> > # Connect & Join
> > sudo service zerotier-one status
> > # If it says disabled etc: sudo service zerotier-one start
> > # wait 2-3 mins
> > sudo zerotier-cli join "$NETWORK_ADDRESS" -j | jq .
> > ```
---
- #### Refs & Informed Decision Making
> - https://www.cloudelicious.net/azure-vms-and-their-temporary-storage/
> - https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview#temporary-disk
