#!/usr/bin/env bash
#Deps : coreutils + curl + findutils + jq + tar
#Get latest source
pushd "$(mktemp -d)" && curl -qfSLJO $(curl -qfsSL "https://ziglang.org/download/index.json" | jq -r '.master | ."x86_64-linux".tarball')
#Extract
find . -type f -name '*.tar*' -exec tar -xvf {} \;
#Move to /usr/local/zig
sudo mkdir -p "/usr/local/zig" && sudo mv "$(find . -maxdepth 1 -type d | grep -v '^.$')"/* "/usr/local/zig"
#Test
export PATH="/usr/local/zig:/usr/local/zig/lib:/usr/local/zig/lib/include:$PATH"
zig version ; popd
#EOF
