#!/usr/bin/env bash

### Standalone (Portable) & Latest version of python : https://github.com/indygreg/python-build-standalone

#Deps: awk + coreutils + curl + findutils + grep + jq + tar + wget + zstd  
#ROOT Required: NO

#Install less: 
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Devscripts/install_portable_python_musl.sh")
# curl -qfsSl "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Devscripts/install_portable_python_musl.sh" | bash

#Prefer: x86_64-unknown-linux-musl-lto-full
#Fallback: x86_64-unknown-linux-musl-install_only
#Details: https://gregoryszorc.com/docs/python-build-standalone/main/running.html#obtaining-distributions

#Get latest version 
#export PYTHON_VERSION="3.10.12"
 PYTHON_VERSION="$(curl -qfsSL "https://api.github.com/repos/indygreg/python-build-standalone/releases" | jq -r '.[] | select(.assets[].name | contains("x86_64-unknown-linux-musl-lto-full.tar.zst")) | .assets[].browser_download_url' | grep -iv ".sha256$" | grep -i "x86_64-unknown-linux-musl-lto-full\.tar\.zst$" | sort -u | sed -n 's/.*\/cpython-\([0-9]*\.[0-9]*\.[0-9]*\)%2B.*$/cpython-\1/p' | sort -t. -k2,2n -k3,3n -k4,4n | awk -F'-' '{print $2}' | tail -n 1)" && export PYTHON_VERSION="$PYTHON_VERSION"  ; echo -e "\n[+] Python Version: $PYTHON_VERSION\n"
#Download latest build
 PWD_PATH="$(realpath .)" && export PWD_PATH="$PWD_PATH"
 cd "$(mktemp -d)" && wget -q --show-progress "$(curl -qfsSL "https://api.github.com/repos/indygreg/python-build-standalone/releases" | jq -r '.[] | select(.assets[].name | contains("x86_64-unknown-linux-musl-lto-full.tar.zst")) | .assets[].browser_download_url' | grep -iv ".sha256$" | grep -i "x86_64-unknown-linux-musl-lto-full\.tar\.zst$" | sort -u | grep -i "$PYTHON_VERSION" | tail -n 1)" -O "./python.zst"
 CWD_PATH="$(realpath .)" && export CWD_PATH="$CWD_PATH"
  #Extract 
  find . -type f -name '*.zst' -exec tar --zstd -xvf {} \; && find . -type f -name '*.zst' -exec rm -rf {} \;
#Fallback
  if [[ ! -e "$(find . -type f -name 'pip')" ]]; then
     #Download install-only tar
     cd "$(mktemp -d)" && wget -q --show-progress "$(curl -qfsSL "https://api.github.com/repos/indygreg/python-build-standalone/releases" | jq -r '.[] | select(.assets[].name | contains("x86_64-unknown-linux-musl-install_only.tar.gz")) | .assets[].browser_download_url' | grep -iv ".sha256$" | grep -i "x86_64-unknown-linux-musl-install_only\.tar\.gz$" | sort -u | grep -i "$PYTHON_VERSION" | tail -n 1)" -O "./python.tar.gz"
    #Extract
     find . -type f -name '*.tar.gz' -exec tar -xzvf {} \; && find . -type f -name '*.tar.gz' -exec rm -rf {} \;
  fi
#Test
  echo -e "\n[+] Testing Successful Extraction\n"
  find . -type f -name "pip" -exec {} --version \;
  find -L . -type f -name "python3" -exec {} --version \;
#Move & Add to path
 echo -e "\n[+] Copying Python to $HOME/.local"
 mkdir -p "$HOME/.local" && cd "$CWD_PATH" && cp -r "./." "$HOME/.local"
 PYTHON_PATH="$(find $HOME/.local -type f -name "pip3" | sed 's/\/[^/]*$//')" && export PYTHON_PATH="$PYTHON_PATH"
 PYTHON_ROOT="$(find "$HOME/.local" -type f -name "pip3" | sed 's|^\('"$HOME"'/\.local/[^/]*\)/.*|\1|')" && export PYTHON_ROOT="$PYTHON_ROOT"
 echo -e "\n[+] Please Add $PYTHON_PATH to \$PATH"
 echo -e "\n[+] Bin Directory --> $PYTHON_PATH"
 echo -e "\n[+] Root Directory --> $PYTHON_ROOT\n"
#Test
 echo -e "\n[+] RUNNING PATH=$PYTHON_PATH:$PATH pip3 --version\n"
 PATH="$PYTHON_PATH:$PATH" pip3 --version
 echo -e "\n[+] RUNNING PATH=$PYTHON_PATH:$PATH python3 --version\n"
 PATH="$PYTHON_PATH:$PATH" python3 --version
#Size 
 echo -e "\n[+] Install Size: $(du -h $PYTHON_ROOT | tail -n 1)\n"
#Purge Artefacts
 rm -rf "$CWD_PATH" && cd "$PWD_PATH"
#EOF
