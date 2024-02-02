#!/usr/bin/env bash

#Install less: 
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/bootstrap.sh")
# PUB: bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/bootstrap.sh")
# curl -qfsSl "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/bootstrap.sh" | bash
# PUB: curl -qfsSl "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/bootstrap.sh" | bash

#In case of zig polluted env 
 unset AR CC CXX DLLTOOL HOST_CC HOST_CXX OBJCOPY RANLIB
#Sanity Checks
if ! command -v apt > /dev/null 2>&1; then
  echo -e "\n[+] APT not found, maybe not Debian?\n"
  exit 1
else
  export DEBIAN_FRONTEND="noninteractive"
    if ! command -v sudo > /dev/null 2>&1; then
       apt-get update -y ; apt-get dist-upgrade -y ; apt-get upgrade -y
       apt install ca-certificates coreutils curl dos2unix git htop flex file jq moreutils sudo wget -y > /dev/null 2>&1
       apt-get install coreutils sudo -y > /dev/null 2>&1
    else
       sudo apt-get update -y ; sudo apt-get dist-upgrade -y ; sudo apt-get upgrade -y
       sudo apt install ca-certificates coreutils curl dos2unix git htop flex file jq moreutils sudo wget -y > /dev/null 2>&1
       sudo apt-get install coreutils sudo -y > /dev/null 2>&1  
    fi
fi
#Deps:
sudo apt-get install automake b3sum build-essential ca-certificates ccache lzip jq make musl musl-dev musl-tools p7zip-full wget -y 2>/dev/null
sudo apt-get install -y --no-install-recommends autoconf automake autopoint binutils bison build-essential byacc ca-certificates clang flex file jq patch patchelf pkg-config 2>/dev/null
#EOF
