#!/usr/bin/env bash

#Requires: coreutils + curl + findutils + grep + moreutils + rsync
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/install_node_aarch64.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/install_node_aarch64.sh")

#--------------#
if ! command -v node > /dev/null 2>&1 || ! command -v npm > /dev/null ; then
   ##Get Latest Tar
   echo -e "\n[+] Installing NodeJS\n"
   pushd "$(mktemp -d)" > /dev/null 2>&1
   curl -qfsSLJO "https://nodejs.org/dist/latest/$(curl -qfsSL "https://nodejs.org/dist/latest/" | grep -o 'href="[^"]*"' | sed 's/href="//' | grep 'linux-arm64.tar.xz' | sed 's/"$//' | sort | tail -n 1)"
   find . -type f -name '*.xz' -exec tar -xf {} \; && find . -type f -name '*.xz' -exec rm {} -rf \; 
   cd "$(find . -maxdepth 1 -type d -exec basename {} \; | grep -Ev '^\.$' | xargs -I {} realpath {})"
   #Copy to /usr/* && /usr/local/*
   if ! command -v rsync > /dev/null 2>&1 ; then
     sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/rsync" -o "/usr/local/bin/rsync" && sudo chmod +x "/usr/local/bin/rsync"
   fi
   sudo rsync --archive --checksum --human-readable --progress --quiet "./bin/" "/usr/bin/"
   sudo rsync --archive --checksum --human-readable --progress --quiet "./bin/" "/usr/local/bin/"
   sudo rsync --archive --checksum --human-readable --progress --quiet "./include/" "/usr/include/"
   sudo rsync --archive --checksum --human-readable --progress --quiet "./include/" "/usr/local/include/"
   sudo rsync --archive --checksum --human-readable --progress --quiet "./lib/" "/usr/lib/"
   sudo rsync --archive --checksum --human-readable --progress --quiet "./lib/" "/usr/local/lib/"
   sudo rsync --archive --checksum --human-readable --progress --quiet "./share/" "/usr/share/"
   sudo rsync --archive --checksum --human-readable --progress --quiet "./share/" "/usr/local/share/"
   ##Get N: https://github.com/mklement0/n-install/
   #curl -qfksSL "https://bit.ly/n-install" | bash -s -- -y latest
   #Check
   node --version && npm version ; popd > /dev/null 2>&1
else
  #Update NPM
   npm install --global --force "npm@latest"
  #Update Node: https://github.com/mklement0/n-install/
   npm install --global --force "n@latest"
   sudo n latest -y
  #Check
   node --version && npm version ; popd > /dev/null 2>&1
fi
##bun : https://bun.sh/docs/installation#installing
echo -e "\n[+] Installing Bun"
npm install --global --force "bun@latest" ; bun --version
##pnpm : https://pnpm.io/installation#using-npm
echo -e "\n[+] Installing pnpm"
npm install --global --force "pnpm@latest" ; pnpm --version
# Requires no node: npm install "@pnpm/exe" --global ; pnpm --version
##Yarn : https://classic.yarnpkg.com/lang/en/docs/install
echo -e "\n[+] Installing yarn"
npm install --global --force "yarn@latest" ; yarn --version
##END
