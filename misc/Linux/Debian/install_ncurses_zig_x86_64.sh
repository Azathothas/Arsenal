#!/usr/bin/env bash

#Install less: 
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/install_ncurses_zig_x86_64.sh")
# curl -qfsSl "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/Debian/install_ncurses_zig_x86_64.sh" | bash

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
sudo apt-get install libtool-bin -y 2>/dev/null
#Check
if ! command -v libtool > /dev/null 2>&1; then
  echo -e "\n[+] libtool not found, Auto Install Failed\n"
  exit 1
fi
#Clean env
unset AR CC CXX HOST_CC HOST_CXX OBJCOPY RANLIB
CWD_PATH="$(realpath .)" && export CWD_PATH="$CWD_PATH"
##DEPS :: zig
if ! command -v zig > /dev/null 2>&1; then
  #Install Zig
     curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Devscripts/install_zig.sh" | sudo bash
  #Export Zig Path 
     export ZIG_PATH="/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"
else
  #Export Default Path
     export ZIG_PATH="$PATH"
fi
##NCURSES
#Sources (Archive)
#changelogs: https://invisible-island.net/ncurses/NEWS.html
#Create tmp dir & get latest stable sources
#Development Src
 pushd "$(mktemp -d)" > /dev/null 2>&1 && wget --quiet --show-progress --progress="dot:giga" "https://invisible-island.net/datafiles/current/ncurses.tar.gz"
#Stable
#pushd "$(mktemp -d)" && wget --quiet --show-progress --progress="dot:giga" "https://invisible-island.net/datafiles/release/ncurses.tar.gz"
#Extract
find . -type f -name "*.tar.gz*" -exec tar -xvf {} \; 2>/dev/null
cd "$(find . -maxdepth 1 -type d -name "*ncurses*" | grep -v "^.$")"
# #Sources (Git)
# pushd "$(mktemp -d)" > /dev/null 2>&1 && git clone --filter "blob:none" "https://github.com/ThomasDickey/ncurses-snapshots" && cd "./ncurses-snapshots" 
# #Export Version
# export NCURSES_VERSION="$(git tag --sort=-creatordate | head -n 1)"
# echo "NCURSES_VERSION=$NCURSES_VERSION" >> "$GITHUB_ENV" 2>/dev/null 
# export RELEASE_VERSION=$(git tag --sort=-creatordate | head -n 1 | sed 's/^v//; s/-.*$//')
# echo -e "\n[+] Ncurses Version: $RELEASE_VERSION\n"
# echo "RELEASE_VERSION=$RELEASE_VERSION" >> "$GITHUB_ENV" 2>/dev/null 
# #Checkout to latest
# git checkout "$NCURSES_VERSION"
#export FLAGS
export AR="zig ar"
export CC="zig cc -target x86_64-linux-musl"
export CXX="zig c++ -target x86_64-linux-musl"
export DLLTOOL="zig dlltool"
export HOST_CC="zig cc -target x86_64-linux-musl"
export HOST_CXX="zig c++ -target x86_64-linux-musl"
export OBJCOPY="zig objcopy"
export RANLIB="zig ranlib" 
#https://invisible-island.net/ncurses/INSTALL.html
 make dist clean 2>/dev/null ; make clean 2>/dev/null
#Configure with zig cc & sane opts
 "./configure" --with-build-cc="zig cc -target x86_64-linux-musl" --with-build-cpp="zig c++ -target x86_64-linux-musl" --with-libtool --with-libtool-opts="-static" --enable-bsdpad --enable-getcap --enable-static --with-normal --without-debug
#Build
 PATH="$ZIG_PATH" make CC="$CC" CXX="$CXX" HOST_CC="$HOST_CC" HOST_CXX="$HOST_CXX" TARGET_STRIP="strip" --jobs="$(($(nproc)+1))" --keep-going 
#Test
 find "./progs" -type f -exec strip {} 2>/dev/null \; 2>/dev/null
 file "./progs/"* 2>/dev/null && ldd "./progs/"* 2>/dev/null
 ls -sh "./progs/"* ; chmod +xwr "./progs/"* ; "./progs/tput" -V
#Install
 sudo PATH="$ZIG_PATH" make install ; tput -V 
#Exit
 unset AR CC CXX HOST_CC HOST_CXX OBJCOPY RANLIB
 popd > /dev/null 2>&1 ; cd "$CWD_PATH"
#EOF
