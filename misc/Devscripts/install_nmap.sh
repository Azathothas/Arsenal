#!/usr/bin/env bash

#Deps
# sudo apt-get install automake b3sum build-essential ca-certificates ccache lzip jq make musl musl-dev musl-tools p7zip-full wget -y
# sudo apt-get install -y --no-install-recommends autoconf automake autopoint binutils bison build-essential byacc ca-certificates clang flex file jq patch patchelf pkg-config

#Install less: 
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Devscripts/install_nmap.sh")
# curl -qfsSl "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Devscripts/install_nmap.sh" | bash

#Clean env
unset AR CC CXX HOST_CC HOST_CXX
sudo rm "$(which nmap)" 2>/dev/null ; sudo rm "$(which nmap)" 2>/dev/null
CWD_PATH="$(realpath .)" && export CWD_PATH="$CWD_PATH"
#Build Openssl
 #Get Latest Source
 pushd "$(mktemp -d)" > /dev/null 2>&1 && git clone --filter "blob:none" "https://github.com/openssl/openssl" && cd "./openssl"
 #Get Version
 OPENSSL_VERSION="$(git tag --sort=-creatordate | head -n 1)" && export OPENSSL_VERSION="$OPENSSL_VERSION" ; echo -e "\n[+] Version = $OPENSSL_VERSION\n"
 #Checkout
 git checkout "$OPENSSL_VERSION" 2>/dev/null
 #Configure
 make dist clean 2>/dev/null ; make clean 2>/dev/null ; "./Configure"
 #Compile
 make --jobs="$(($(nproc)+1))" --keep-going
 sudo make install ; openssl version
#Exit
 popd > /dev/null 2>&1 ; cd "$CWD_PATH"
#Build Nmap 
 #Get Latest Source
 pushd "$(mktemp -d)" > /dev/null 2>&1 && git clone --filter "blob:none" "https://github.com/nmap/nmap" && cd "./nmap"
 #Get Version
 NMAP_VERSION="$(git tag --sort=-creatordate | head -n 1)" && export NMAP_VERSION="$NMAP_VERSION" ; echo -e "\n[+] Version = $NMAP_VERSION\n"
 #checkout to latest version
 git checkout "$NMAP_VERSION" 2>/dev/null
 #Cleanup 
 make dist clean 2>/dev/null ; make clean 2>/dev/null
 #Configure 
 "./configure" --with-libpcap="included" --with-libpcre="included" --with-libz="included" --with-libssh2="included" --with-libdnet="included" --with-liblua="included" --with-liblinear="included"
 #Compile
 make --jobs="$(($(nproc)+1))" --keep-going
 #Install
 sudo make install
 #Test 
 "./nmap" --version
 nmap --version
#Exit
 popd > /dev/null 2>&1 ; cd "$CWD_PATH"
#EOF
