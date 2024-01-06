#!/usr/bin/env bash

# Presets
set -x ; set +e

# Use:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Google/Colab/devsetup.sh")

#Download eget
if ! command -v eget &> /dev/null; then
   curl -qfsSL "https://zyedidia.github.io/eget.sh" | bash
   if [ -f "./eget" ]; then
       mv "./eget" "/tmp/eget" && chmod +xwr "/tmp/eget"
   else
      pushd "$(mktemp -d)" > /dev/null 2>&1
      curl -qfLJO $(curl -qfsSL "https://api.github.com/repos/zyedidia/eget/releases/latest" | jq -r '.assets[].browser_download_url' | grep -i 'linux.*amd64')
      find . -type f -name '*.tar.gz' -exec tar -xzvf {} \;
      find . -type f -name 'eget*' -exec strip {} \; >/dev/null 2>&1
      find . -type f -name 'eget' -exec mv {} "/tmp/eget" \;
      chmod +xwr "/tmp/eget"
      popd > /dev/null 2>&1
   fi
else
  cp "$(which eget)" "/tmp/eget"
fi

#Install/Update golang
pushd "$(mktemp -d)" && echo "yes" | bash <(curl -qfsSL "https://git.io/go-installer") 2>/dev/null ; popd

#Install Rust
curl -qfsSL "https://sh.rustup.rs" | bash -s -- -y

#Setup openvscode-server (gitpod)
# Source : https://github.com/gitpod-io/openvscode-server
#Setup Dirs
rm "$HOME/openvscode-server" -rf && mkdir -p "$HOME/openvscode-server" && cd "$HOME/openvscode-server"
#Download latest release
"/tmp/eget" "gitpod-io/openvscode-server" --asset "linux" --asset "64" --asset "^arm" --download-only
#Extract
find -type f -name "*tar.gz*" -exec tar xvfz {} --strip-components=1 \; && find -type f -name "*tar.gz*" -exec rm {} -rf \;
#Run & Fork to bg
nohup "$HOME/openvscode-server/bin/openvscode-server" --host "0.0.0.0" --port "9090" --telemetry-level off --accept-server-license-terms --without-connection-token >/dev/null 2>&1 &
#EOF
