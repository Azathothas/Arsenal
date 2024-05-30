#!/usr/bin/env bash

##Requirements: aws-wire-lengths bash coreutils curl findutils jq moreutils

##Usage:
# bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Amazon/AWS/reboot_instance.sh")
# bash <(curl -qfsSL "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Amazon/AWS/reboot_instance.sh")

#----------------------------------------------------------------------------#
##Sanity Checks
   SYSTMP="$(dirname $(mktemp -u))" && export SYSTMP="${SYSTMP}"
   USER_AGENT="$(curl -qfsSL 'https://pub.ajam.dev/repos/Azathothas/Wordlists/Misc/User-Agents/ua_chrome_macos_latest.txt')" && export USER_AGENT="${USER_AGENT}"
 #Curl
   if ! command -v curl &> /dev/null; then
     echo -e "\n[-] FATAL: Install Curl (https://bin.ajam.dev/$(uname -m)/curl)\n"
   exit 1
   fi
 #Get Bin  
   if command -v sudo &> /dev/null && sudo -n true 2>/dev/null; then
     sudo curl -A "${USER_AGENT}" -qfsSL "https://bin.ajam.dev/$(uname -m)/aws-wire-lengths" -o "/usr/local/bin/aws-wire-lengths" && sudo chmod +x "/usr/local/bin/aws-wire-lengths"
     sudo curl -A "${USER_AGENT}" -qfsSL "https://bin.ajam.dev/$(uname -m)/ipinfo" -o "/usr/local/bin/ipinfo" && sudo chmod +x "/usr/local/bin/ipinfo"
     sudo curl -A "${USER_AGENT}" -qfsSL "https://bin.ajam.dev/$(uname -m)/jq" -o "/usr/local/bin/jq" && sudo chmod +x "/usr/local/bin/jq"
   else
     curl -A "${USER_AGENT}" -qfsSL "https://bin.ajam.dev/$(uname -m)/aws-wire-lengths" -o "${SYSTMP}/aws-wire-lengths" && chmod +x "${SYSTMP}/aws-wire-lengths"
     curl -A "${USER_AGENT}" -qfsSL "https://bin.ajam.dev/$(uname -m)/ipinfo" -o "${SYSTMP}/ipinfo" && chmod +x "${SYSTMP}/ipinfo"
     curl -A "${USER_AGENT}" -qfsSL "https://bin.ajam.dev/$(uname -m)/jq" -o "${SYSTMP}/jq" && chmod +x "${SYSTMP}/jq"
     export PATH="${PATH}:${SYSTMP}"
   fi
 #AWS_ACCESS_KEY_ID
   if [ -z "$AWS_ACCESS_KEY_ID" ] || [ -z "${AWS_ACCESS_KEY_ID+x}" ]; then
     echo -e "\n[-] AWS_ACCESS_KEY_ID isn't Exported\n"
    exit 1
   fi
 #AWS_ACCESS_KEY_ID
   if [ -z "$AWS_ACCESS_KEY_ID" ] || [ -z "${AWS_SECRET_ACCESS_KEY+x}" ]; then
     echo -e "\n[-] AWS_SECRET_ACCESS_KEY isn't Exported\n"
    exit 1
   fi
 #AWS_REGION
   if [ -z "$AWS_REGION" ] || [ -z "${AWS_REGION+x}" ]; then
     echo -e "\n[-] AWS_REGION isn't Exported\n"
    exit 1
   fi
 #EC2_INSTANCE_NAME
   if [ -z "$EC2_INSTANCE_NAME" ] || [ -z "${EC2_INSTANCE_NAME+x}" ]; then
     echo -e "\n[-] EC2_INSTANCE_NAME isn't Exported\n"
    exit 1
   fi
 #EC2_INSTANCE_ID
   if [ -z "$EC2_INSTANCE_ID" ] || [ -z "${EC2_INSTANCE_ID+x}" ]; then
     echo -e "\n[-] EC2_INSTANCE_ID isn't Exported\n"
    exit 1
   fi
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#List
 aws-wire-lengths --region-ec2 "${AWS_REGION}" instance list
#Get IP
 EC2_IP_OLD="$(aws-wire-lengths --region-ec2 "${AWS_REGION}" instance ip "${EC2_INSTANCE_NAME}" | tr -d '[:space:]')" && export EC2_IP_OLD="${EC2_IP_OLD}"
 echo -e "\n[+] IPv4 Address: ${EC2_IP_OLD}\n"
 #curl -A "${USER_AGENT}" -H "Accept: application/json" -qfsSL "https://ipinfo.io/${EC2_IP_OLD}/json" | jq . ; echo
 ipinfo "${EC2_IP_OLD}" --pretty 2>/dev/null
#Start/Stop: https://web.archive.org/web/2/https://devopslearning.medium.com/differences-between-aws-ec2-instance-start-stop-and-restart-operation-35f98f9e1065
 echo -e "\n[+] Stopping... ${EC2_INSTANCE_NAME}"
 aws-wire-lengths --region-ec2 "${AWS_REGION}" instance stop "${EC2_INSTANCE_NAME}" >/dev/null 2>&1
 echo -e "[+] Starting... ${EC2_INSTANCE_NAME}\n"
 aws-wire-lengths --region-ec2 "${AWS_REGION}" instance start "${EC2_INSTANCE_NAME}" >/dev/null 2>&1
#List again
 aws-wire-lengths --region-ec2 "${AWS_REGION}" instance list
#Recheck IP
 EC2_IP_NEW="$(aws-wire-lengths --region-ec2 "${AWS_REGION}" instance ip "${EC2_INSTANCE_NAME}" | tr -d '[:space:]')" && export EC2_IP_NEW="${EC2_IP_NEW}"
 echo -e "\n[+] IPv4 Address: ${EC2_IP_NEW}\n"
 #curl -A "${USER_AGENT}" -H "Accept: application/json" -qfsSL "https://ipinfo.io/${EC2_IP_NEW}/json" | jq . ; echo
 ipinfo "${EC2_IP_NEW}" --pretty 2>/dev/null
#END
unset EC2_IP_OLD EC2_IP_NEW
#EOF
#----------------------------------------------------------------------------#
