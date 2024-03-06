#!/usr/bin/env bash

# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/install_chrome_aarch64.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/install_chrome_aarch64.sh")

# ##Google Chrome
# echo -e "\n[+] Installing Google Chrome\n"
# pushd "$(mktemp -d)" > /dev/null 2>&1 && curl -qfsSL "https://dl.google.com/linux/direct/google-chrome-stable_current_arm64.deb" -o "./chrome.deb"
# sudo apt install "./chrome.deb" -y
echo -e "\n[+] Updating Browser Components\n"
sudo apt update -y && sudo apt upgrade -y ; popd > /dev/null 2>&1 ; google-chrome --version
##Chromium : https://github.com/phd/chromium-repo | https://freeshell.de/phd/chromium/
echo -e "\n[+] Installing Chromium\n"
source "/etc/lsb-release"
echo "deb https://freeshell.de/phd/chromium/${DISTRIB_CODENAME} /" | sudo tee "/etc/apt/sources.list.d/phd-chromium.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys "869689FE09306074"
sudo apt-get update -y && sudo apt-get remove chromium-browser -y 2>/dev/null
sudo apt-get install chromium -y ; chromium --version
##END
