#!/usr/bin/env bash

# Use:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Github/Runners/Ubuntu/debloat.sh")

#Ref: https://github.com/easimon/maximize-build-space
# https://github.com/easimon/maximize-build-space/blob/master/action.yml

#The Build Image & Docs: https://github.com/actions/runner-images/blob/main/images/ubuntu/Ubuntu2204-Readme.md

#----------------------------------------------------------------------------#
# If On Github Actions, remove bloat to get space (~ 40 GB)
if [ "$USER" = "runner" ] || [ "$(whoami)" = "runner" ] && [ -s "/opt/runner/provisioner" ]; then
   echo -e "\n[+] Debloating GH Runner...\n"
   export DEBIAN_FRONTEND="noninteractive"
   sudo apt-get update -y -qq >/dev/null 2>&1
   ROOT_DISK="$(df -h / | awk 'NR==2 {print $1}')" && export ROOT_DISK="${ROOT_DISK}"
   TOTAL_DSIZE="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $2}')" && export TOTAL_DSIZE="${TOTAL_DSIZE}"
   INITIAL_DSIZE="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $3}')" && export INITIAL_DSIZE="${INITIAL_DSIZE}"
   INITIAL_FREEP="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $5}')" && export INITIAL_FREEP="${INITIAL_FREEP}"
    #----------------------------------------------------------------------------#
    ## Android NDK     :: ~ 12.0 GB
     sudo rm "/usr/local/lib/android" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## AWS             :: ~ 500 MB
     find "/usr/local" -maxdepth 1 -type d -name '*aws*cli*' -exec sudo rm {} -rf \; >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## Azure cli      :: ~ 800 MB
     sudo rm "/opt/az" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## AZ (PowerShell) :: ~ 500 MB
     find "/usr/share" -maxdepth 1 -type d -name 'az_*' -exec sudo rm {} -rf \; >/dev/null 2>&1 &     
    #----------------------------------------------------------------------------#
    ## DotNET          :: ~ 2.0 GB
     sudo rm "/usr/lib/dotnet" -rf >/dev/null 2>&1 &
     sudo rm "/usr/share/dotnet" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## GCP SDK         :: ~ 2.0 GB
     sudo rm "/usr/lib/google-cloud-sdk" -rf >/dev/null 2>&1 &     
    #----------------------------------------------------------------------------#
    ## Haskell         :: ~ 5.0 GB
     sudo rm "/usr/local/.ghcup" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## Heroku          :: ~ 500 MB
     sudo rm "/usr/local/lib/heroku" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## HostedToolCache :: ~ 12 GB
     sudo rm "/opt/hostedtoolcache" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## JVM             :: ~ 1.5 GB
     sudo rm "/usr/lib/jvm" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## Julia           :: ~ 500 MB
     find "/usr/local" -maxdepth 1 -type d -name '*julia*' -exec sudo rm {} -rf \; >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## Miniconda       :: ~ 700 MB
     sudo rm "/usr/share/miniconda" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## Microsoft       :: ~ 700 MB
     sudo rm "/opt/microsoft" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## Mono (.NET)     :: ~ 1.5 GB
     sudo rm "/usr/lib/mono" -rf >/dev/null 2>&1 &     
    #----------------------------------------------------------------------------#
    #WARNING: This seem to break some core components, rendering the runner unusable & terminate
    ## Node Modules    :: ~ 1.1 GB
     #sudo rm "/usr/local/lib/node_modules" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## PowerShell      :: ~ 1.0 GB
     sudo rm "/usr/local/share/powershell" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
    ## Snap       :: ~ 5 GB
     #https://github.com/grobo021/snap-nuke/blob/main/snap-nuke.sh
     #https://github.com/polkaulfield/ubuntu-debullshit/blob/main/ubuntu-debullshit.sh
     #while [ "$(snap list 2>/dev/null | wc -l)" -gt 0 ]; do for snap in $(snap list 2>/dev/null | tail -n +2 | cut -d ' ' -f 1); do snap remove --purge "$snap" 2>/dev/null ; done ; done
     sudo snap remove "$(snap list 2>/dev/null | awk '!/^Name|^core|^bare|^snapd/ {print $1}')" >/dev/null 2>&1 &
     wait ; sudo snap remove "$(snap list 2>/dev/null | awk '/^bare/ {print $1}')" >/dev/null 2>&1 &
     wait ; sudo snap remove "$(snap list 2>/dev/null | awk '/^core/ {print $1}')" >/dev/null 2>&1 &
     wait ; sudo snap remove "$(snap list 2>/dev/null | awk '/^snapd/ {print $1}')" >/dev/null 2>&1 &
     wait ; sudo systemctl disable --now snapd >/dev/null 2>&1 &
     wait ; sudo systemctl disable snapd >/dev/null 2>&1 &
     wait ; sudo systemctl mask snapd >/dev/null 2>&1 &
     wait ; sudo apt purge snapd -y -qq >/dev/null 2>&1 &
     wait ; sudo rm "/snap" -rf >/dev/null 2>&1 &
     sudo rm "$HOME/snap" -rf >/dev/null 2>&1 &
     sudo rm "/root/snap" -rf >/dev/null 2>&1 &
     sudo rm "/var/snap" -rf >/dev/null 2>&1 &
     sudo rm "/var/cache/snapd" -rf >/dev/null 2>&1 &
     sudo rm "/var/lib/snapd" -rf >/dev/null 2>&1 &
     echo "" | sudo tee "/etc/apt/preferences.d/no-snap.pref" >/dev/null 2>&1
     echo 'Package: snapd' | sudo tee -a "/etc/apt/preferences.d/no-snap.pref" >/dev/null 2>&1 &
     wait ; echo 'Pin: release a=*' | sudo tee -a "/etc/apt/preferences.d/no-snap.pref" >/dev/null 2>&1 &
     wait ; echo 'Pin-Priority: -10' | sudo tee -a "/etc/apt/preferences.d/no-snap.pref" >/dev/null 2>&1 &
     wait ; sudo chown "root:root" "/etc/apt/preferences.d/no-snap.pref" >/dev/null 2>&1 &
     wait ; sudo apt-get update -qq -y >/dev/null 2>&1 &
     for S in "$(df -h | awk '/snap/ {print $6}')"; do sudo umount "$S" >/dev/null 2>&1 ; done
    #----------------------------------------------------------------------------#
    ## Swift           :: ~ 1.7 GB
     sudo rm "/usr/share/swift" -rf >/dev/null 2>&1 &
    #----------------------------------------------------------------------------#
   #wait
   wait ; reset >/dev/null 2>&1 ; echo
   FINAL_DSIZE="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $3}')" && export FINAL_DSIZE="${FINAL_DSIZE}"
   FINAL_FREEP="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $5}')" && export FINAL_FREEP="${FINAL_FREEP}"
   echo -e "\n[+] Reduced Disk (Total: ${TOTAL_DSIZE}) :: (Used: ${INITIAL_DSIZE}) (Free: ${INITIAL_FREEP}) --> (Used: ${FINAL_DSIZE}) (Free: ${FINAL_FREEP})\n"
   unset DEBIAN_FRONTEND ROOT_DISK TOTAL_DSIZE INITIAL_DSIZE INITIAL_FREEP FINAL_DSIZE FINAL_FREEP
fi
#----------------------------------------------------------------------------#
