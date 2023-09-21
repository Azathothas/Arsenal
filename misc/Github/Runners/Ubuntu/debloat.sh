#!/usr/bin/env bash

!# Use:
!# bash <(curl -qfsSL "")
# If On Github Actions, remove bloat to get space (~ 30 GB)
if [ "$USER" = "runner" ] || [ "$(whoami)" = "runner" ]; then
     #12.0 GB
     sudo rm /usr/local/lib/android -rf 2>/dev/null
     #8.2 GB
     sudo rm /opt/hostedtoolcache/CodeQL -rf 2>/dev/null
     #5.0 GB
     sudo rm /usr/local/.ghcup -rf 2>/dev/null
     #2.0 GB
     sudo rm /usr/share/dotnet -rf 2>/dev/null
     #1.7 GB
     sudo rm /usr/share/swift -rf 2>/dev/null
     #1.1 GB
     #sudo rm /usr/local/lib/node_modules -rf 2>/dev/null
     #1.0 GB
     sudo rm /usr/local/share/powershell -rf 2>/dev/null
     #500 MB
     sudo rm /usr/local/lib/heroku -rf 2>/dev/null
fi
