#!/usr/bin/env bash

# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/install_node_aarch64.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/install_node_aarch64.sh")

#--------------#
#Get Latest Tar
echo -e "\n[+] Installing NodeJS\n"
pushd "$(mktemp -d)" > /dev/null 2>&1
curl -qfsSLJO "https://nodejs.org/dist/latest/$(curl -qfsSL "https://nodejs.org/dist/latest/" | grep -o 'href="[^"]*"' | sed 's/href="//' | grep 'linux-arm64.tar.xz' | sed 's/"$//' | sort | tail -n 1)"
find . -type f -name '*.xz' -exec tar -xf {} \; && find . -type f -name '*.xz' -exec rm {} -rf \; && cd "$(ls -d */)"
#Copy to /usr/* && /usr/local/*
sudo rsync --archive --checksum --human-readable --progress --quiet "./bin/" "/usr/bin/"
sudo rsync --archive --checksum --human-readable --progress --quiet "./bin/" "/usr/local/bin/"
sudo rsync --archive --checksum --human-readable --progress --quiet "./include/" "/usr/include/"
sudo rsync --archive --checksum --human-readable --progress --quiet "./include/" "/usr/local/include/"
sudo rsync --archive --checksum --human-readable --progress --quiet "./lib/" "/usr/lib/"
sudo rsync --archive --checksum --human-readable --progress --quiet "./lib/" "/usr/local/lib/"
sudo rsync --archive --checksum --human-readable --progress --quiet "./share/" "/usr/share/"
sudo rsync --archive --checksum --human-readable --progress --quiet "./share/" "/usr/local/share/"
#Check
node --version && npm --version ; popd > /dev/null 2>&1
##bun : https://bun.sh/docs/installation#installing
echo -e "\n[+] Installing Bun"
npm install bun --global ; bun --version
##pnpm : https://pnpm.io/installation#using-npm
echo -e "\n[+] Installing pnpm"
npm install pnpm --global ; pnpm --version
# Requires no node: npm install "@pnpm/exe" --global ; pnpm --version
##Yarn : https://classic.yarnpkg.com/lang/en/docs/install
echo -e "\n[+] Installing yarn"
npm install yarn --global ; yarn --version
##END
