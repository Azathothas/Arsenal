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
   ROOT_DISK="$(df -h / | awk 'NR==2 {print $1}')" && export ROOT_DISK="${ROOT_DISK}"
   TOTAL_DSIZE="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $2}')" && export TOTAL_DSIZE="${TOTAL_DSIZE}"
   INITIAL_DSIZE="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $3}')" && export INITIAL_DSIZE="${INITIAL_DSIZE}"
   INITIAL_FREEP="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $5}')" && export INITIAL_FREEP="${INITIAL_FREEP}"
    #----------------------------------------------------------------------------#
    ## Android NDK     :: ~ 12.0 GB
     sudo rm "/usr/local/lib/android" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## AWS             :: ~ 500 MB
     find "/usr/local" -maxdepth 1 -type d -name '*aws*cli*' -exec sudo rm {} -rf \; 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Azure cli      :: ~ 800 MB
     sudo rm "/opt/az" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## AZ (PowerShell) :: ~ 500 MB
     find "/usr/share" -maxdepth 1 -type d -name 'az_*' -exec sudo rm {} -rf \; 2>/dev/null &     
    #----------------------------------------------------------------------------#
    ## DotNET          :: ~ 2.0 GB
     sudo rm "/usr/lib/dotnet" -rf 2>/dev/null &
     sudo rm "/usr/share/dotnet" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## GCP SDK         :: ~ 2.0 GB
     sudo rm "/usr/lib/google-cloud-sdk" -rf 2>/dev/null &     
    #----------------------------------------------------------------------------#
    ## Haskell         :: ~ 5.0 GB
     sudo rm "/usr/local/.ghcup" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Heroku          :: ~ 500 MB
     sudo rm "/usr/local/lib/heroku" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## HostedToolCache :: ~ 12 GB
     sudo rm "/opt/hostedtoolcache" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## JVM             :: ~ 1.5 GB
     sudo rm "/usr/lib/jvm" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Julia           :: ~ 500 MB
     find "/usr/local" -maxdepth 1 -type d -name '*julia*' -exec sudo rm {} -rf \; 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Miniconda       :: ~ 700 MB
     sudo rm "/usr/share/miniconda" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Microsoft       :: ~ 700 MB
     sudo rm "/opt/microsoft" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Mono (.NET)     :: ~ 1.5 GB
     sudo rm "/usr/lib/mono" -rf 2>/dev/null &     
    #----------------------------------------------------------------------------#
    #WARNING: This seem to break some core components, rendering the runner unusable & terminate
    ## Node Modules    :: ~ 1.1 GB
     #sudo rm "/usr/local/lib/node_modules" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## PowerShell      :: ~ 1.0 GB
     sudo rm "/usr/local/share/powershell" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Snap       :: ~ 5 GB
     sudo rm "/snap" -rf 2>/dev/null &
     sudo rm "/var/lib/snapd" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
    ## Swift           :: ~ 1.7 GB
     sudo rm "/usr/share/swift" -rf 2>/dev/null &
    #----------------------------------------------------------------------------#
   #wait
   wait ; reset ; echo
   FINAL_DSIZE="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $3}')" && export FINAL_DSIZE="${FINAL_DSIZE}"
   FINAL_FREEP="$(df -h ${ROOT_DISK} | awk 'NR==2 {print $5}')" && export FINAL_FREEP="${FINAL_FREEP}"
   echo -e "\n[+] Reduced Disk (Total: ${TOTAL_DSIZE}) :: (Used: ${INITIAL_DSIZE}) (Free: ${INITIAL_FREEP}) --> (Used: ${FINAL_DSIZE}) (Free: ${FINAL_FREEP})\n"
fi
#----------------------------------------------------------------------------#
