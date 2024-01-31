#!/usr/bin/env bash

# Use:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Github/Runners/Ubuntu/debloat.sh")

#Ref: https://github.com/easimon/maximize-build-space
# https://github.com/easimon/maximize-build-space/blob/master/action.yml

#----------------------------------------------------------------------------#
# If On Github Actions, remove bloat to get space (~ 30 GB)
if [ "$USER" = "runner" ] || [ "$(whoami)" = "runner" ] && [ -s "/opt/runner/provisioner" ]; then
   echo -e "\n[+] Debloating GH Runner...\n"
     #12.0 GB
     sudo rm "/usr/local/lib/android" -rf 2>/dev/null
     #8.2 GB
     sudo rm "/opt/hostedtoolcache/CodeQL" -rf 2>/dev/null
     #5.0 GB
     sudo rm "/usr/local/.ghcup" -rf 2>/dev/null
     #2.0 GB
     sudo rm "/usr/share/dotnet" -rf 2>/dev/null
     #1.7 GB
     sudo rm "/usr/share/swift" -rf 2>/dev/null
     #1.1 GB
     #sudo rm "/usr/local/lib/node_modules" -rf 2>/dev/null
     #1.0 GB
     sudo rm "/usr/local/share/powershell" -rf 2>/dev/null
     #500 MB
     sudo rm "/usr/local/lib/heroku" -rf 2>/dev/null
fi
#----------------------------------------------------------------------------#
