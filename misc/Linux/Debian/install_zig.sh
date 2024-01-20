#!/usr/bin/env bash

#Deps : coreutils + curl + findutils + jq + sudo + tar

#Install less: 
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/install_zig.sh")
# curl -qfsSl "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/install_zig.sh" | bash

#Bootstrap
bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Linux/Debian/bootstrap.sh") 2>/dev/null
#Clean env
sudo rm "/usr/local/zig" -rf 2>/dev/null ; sudo rm "/usr/local/zig" -rf 2>/dev/null
CWD_PATH="$(realpath .)" && export CWD_PATH="$CWD_PATH"
#Get latest source
pushd "$(mktemp -d)" > /dev/null 2>&1 && curl -qfSLJO $(curl -qfsSL "https://ziglang.org/download/index.json" | jq -r '.master | ."x86_64-linux".tarball')
#Extract
find . -type f -name '*.tar*' -exec tar -xvf {} \;
#Move to /usr/local/zig
sudo mkdir -p "/usr/local/zig" && sudo mv "$(find . -maxdepth 1 -type d | grep -v '^.$')"/* "/usr/local/zig"
#Export Zig Path
export ZIG_PATH="/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"
#Test
PATH="$ZIG_PATH" zig version
#Exit
popd > /dev/null 2>&1 ; cd "$CWD_PATH"
#EOF
