#!/usr/bin/env bash
#Get the current hostname
  unset hostname
  hostname=$(cat /etc/hostname) && export hostname="$hostname"
  new_hostname="GCE-Colab"
#/etc/hostname  
  sudo cp /etc/hostname /tmp/hostname.tmp
  sudo sed -i "s/$hostname/$new_hostname/g" /tmp/hostname.tmp
  sudo cat /tmp/hostname.tmp > /etc/hostname
#/etc/hosts  
  sudo cp /etc/hosts /tmp/hosts.tmp
  sudo sed -i "s/$hostname/$new_hostname/g" /tmp/hosts.tmp
  sudo cat /tmp/hosts.tmp > /etc/hosts
 #hostname 
  sudo hostname "$new_hostname"
#EOF
