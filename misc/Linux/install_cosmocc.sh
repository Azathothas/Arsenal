#!/usr/bin/env bash

#https://github.com/jart/cosmopolitan
#https://cosmo.zip/pub

#Requires: coreutils + curl + findutils + grep + moreutils + rsync
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/install_cosmocc.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Linux/install_cosmocc.sh")

#--------------#
 #Get APE
  echo -e "\n[+] Configuring binfmt\n"
   sudo curl -qfsSL "https://cosmo.zip/pub/cosmos/bin/ape-$(uname -m).elf" -o "/usr/bin/ape" 
   sudo chmod +x "/usr/bin/ape"
   sudo sh -c "echo ':APE:M::MZqFpD::/usr/bin/ape:' >/proc/sys/fs/binfmt_misc/register"
   sudo sh -c "echo ':APE-jart:M::jartsr::/usr/bin/ape:' >/proc/sys/fs/binfmt_misc/register"
   sudo ls "/proc/sys/fs/binfmt_misc/"
 #Get Compiler
  echo -e "\n[+] Installing CosmoCC\n"
   pushd "$(mktemp -d)" >/dev/null 2>&1
   curl -qfsSLJO "https://cosmo.zip/pub/cosmocc/cosmocc.zip"
   find . -type f -name '*.zip' -exec unzip -o {} \; && find . -type f -name '*.zip' -exec rm {} -rf \; 
   #Copy to /usr/* && /usr/local/*
   if ! command -v rsync >/dev/null 2>&1 ; then
     sudo curl -qfsSL "https://bin.ajam.dev/$(uname -m)/rsync" -o "/usr/local/bin/rsync" && sudo chmod +x "/usr/local/bin/rsync"
   fi
   sudo rsync --archive --checksum --human-readable --mkpath --progress --quiet "./" "/opt/toolchains/cosmocc/"
   #sudo rsync --archive --checksum --human-readable --mkpath --progress --quiet "./bin/" "/usr/local/bin/"
   popd >/dev/null 2>&1
 #Cleanup  
  find "$(dirname $(mktemp -u))" -type d -name "*cosmo*" 2>/dev/null -exec rm -rf {} \; >/dev/null 2>&1
 #Check
  PATH="${PATH}:/opt/toolchains/cosmocc/bin" command -v cosmocc cosmoc++
  du -sh "/opt/toolchains/cosmocc/"*
  echo -e "\n[+] DOCS: /opt/toolchains/cosmocc/README.md"
  echo -e "\n[+] EXAMPLE:"
  echo 'export CC="/opt/toolchains/cosmocc/bin/cosmocc -I/opt/toolchains/cosmocc/include -L/opt/toolchains/cosmocc/lib"'
  echo 'export CXX="/opt/toolchains/cosmocc/bin/cosmoc++ -I/opt/toolchains/cosmocc/include -L/opt/toolchains/cosmocc/lib"'
  echo 'export CPP="${CXX}"'
  echo 'export AR="/opt/toolchains/cosmocc/bin/cosmoar"'
  echo 'export CFLAGS="-O2 -w -pipe ${CFLAGS}"'
  echo 'export CXXFLAGS="${CFLAGS}"'
  echo 'export CPPFLAGS="${CFLAGS}"'
  echo 'export LDFLAGS="-s -Wl,-S -Wl,--build-id=none ${LDFLAGS}"'
  echo '$CONFIGURE_CMD $CONFIGURE_FLAGS --prefix="/opt/toolchains/cosmocc"'
  echo 'make --jobs="$(($(nproc)+1))"'
  echo 'OR: eval "${CC}" "./$PROG.c" -o "./$PROG"'
  echo -e "\n[+] More Example & Build Scripts: https://github.com/ahgamut/superconfigure/\n"
##END
