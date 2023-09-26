#!/usr/bin/env bash

# Use:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Google/Colab/debloat.sh")

#----------------------------------------------------------------------------#
# If On Colab, remove bloat to get space
if [[ "$(hostname)" == *colab* || "$(hostname)" == *Colab* ]]; then
     #5.0 GB
     sudo rm /usr/local/cuda* -rf 2>/dev/null
fi
#----------------------------------------------------------------------------#
