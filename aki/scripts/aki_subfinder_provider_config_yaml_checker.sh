#!/usr/bin/bash

# Debug
#set -x

#A bit of Styling
RED='\033[31m'
GREEN='\033[32m'
DGREEN='\033[38;5;28m'
GREY='\033[37m'
BLUE='\033[34m'
YELLOW='\033[33m'
PURPLE='\033[35m'
PINK='\033[38;5;206m'
VIOLET='\033[0;35m'
RESET='\033[0m'
NC='\033[0m'

#Banner
echo -e "${PURPLE}"
cat << "EOF"       
 _  |  o 
(_| |< |  : Api Key | Tokens validator 
EOF
echo -e "${NC}"

#Help / Usage
if [[ "$*" == *"-h"* ]] || [[ "$*" == *"--help"* ]] || [[ "$*" == *"help"* ]] ; then
  echo -e "${YELLOW}➼ Usage${NC}: ${PURPLE}aki-subfinder${NC} ${BLUE}-s${NC} ${GREEN}<your/subfinder/provider-config.yaml>${NC}\n"
  echo -e "➼ ${BLUE}Extended Help${NC} :\n"
    if [ ! -f "$HOME/.config/subfinder/provider-config.yaml" ]; then
        echo -e "Your ${YELLOW}$HOME/.config/subfinder/provider-config.yaml${NC} ${RED}does not exist${NC}\n${GREEN}must create${NC} one: ${BLUE}$HOME/.config/subfinder/provider-config.yaml${NC}\nElse use:"
        echo -e "        ${BLUE}-s${NC},  ${BLUE}--subfinder${NC}     ${GREEN}<your/subfinder/provider-config.yaml>${NC} (${YELLOW}Required${NC})\n"
    else
        echo -e "➼ By ${BLUE}default ${YELLOW}$HOME/.config/subfinder/provider-config.yaml${NC} will be used\n  To ${BLUE}change${NC} it use:"
        echo -e "                   ${BLUE}-s${NC},  ${BLUE}--subfinder${NC}     ${GREEN}<your/subfinder/provider-config.yaml>${NC}"
    fi  
    echo -e "${BLUE}Optional flags${NC} :"       
         echo -e " ${BLUE}-q${NC},   ${BLUE}--quota${NC}      ${YELLOW}Show ${PURPLE}Usage Quota${NC} (${BLUE}limited${NC})"                    
 exit 0      
fi   

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -s|--subfinder)
        subfinder_config="$2"
        shift 
        shift 
        ;;
        -q|--quota)
        quota=1
        shift
        ;;        
        *)    
        echo -e "${RED}Error: Invalid option ${YELLOW}'$key'${NC} , try ${BLUE}--help${NC} for Usage"
        exit 1
        ;;
    esac
done

#Dependency checks
echo -e "${GREEN}ⓘ Checking | Downloading ${BLUE}Dependencies${NC}\n"
# Only require curl + pip, prefer binaries for jq | yq
mkdir -p "/tmp/aki/bin"
export PATH="/tmp/aki/bin:$PATH"
# Check pip
if ! command -v pip >/dev/null 2>&1; then
   echo -e "${RED}\u2717 Fatal${NC}: ${PINK} python | pip wasn't found !${NC}"
   if ! command -v pip3 >/dev/null 2>&1; then
      echo -e "${RED}\u2717 Fatal${NC}: ${PINK} python3 | pip3 wasn't found either !${NC}"
      echo -e "${YELLOW}Install them Manually${NC}"
   fi
fi   
#jq, for parsing json
if ! command -v jq >/dev/null 2>&1; then
    echo -e "➼ ${PINK}jq${NC} is ${RED}not installed${NC}. ${GREEN}Installing...${NC}"
    curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/jq" -o "/tmp/aki/bin/jq"
    chmod +xwr "/tmp/aki/bin/jq"
fi
#yq, for parsing yaml
if ! command -v yq >/dev/null 2>&1; then
    echo -e "➼ ${PINK}yq${NC} is ${RED}not installed${NC}. ${GREEN}Installing...${NC}"
    curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/yq" -o "/tmp/aki/bin/yq"
    chmod +xwr "/tmp/aki/bin/yq"
fi
#Quota (ApiKeyBeast)
  curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/aki/scripts/apikeybeast.py" -o "/tmp/aki/bin/apikeybeast.py"
  pip install requests rich --upgrade --quiet
echo -e "${GREEN}ⓘ Configuring ${BLUE}Dependencies${NC}\n"


#Defaults
subfinder_config_def="$HOME/.config/subfinder/provider-config.yaml"

#if no input passed to -s or --subfinder, and it didn't get exported above
if [ -z "$subfinder_config" ]; then
        # Check if default subfinder config file exists
         if [[ -f $subfinder_config_def ]]; then
            echo -e "${GREEN}ⓘ Using default ${BLUE}subfinder config file${NC}: ${PURPLE}$subfinder_config_def${NC}\n"
             export subfinder_config=$subfinder_config_def
         else
           echo -e "${RED}\u2717 Couldn't find${NC} the default${NC} ${PURPLE}subfinder config file${NC}: ${RED}$subfinder_config_def${NC}"
           echo -e "${YELLOW}specify it manually using${NC} ${BLUE}-s${NC} | ${BLUE}--subfinder${NC}\n"
            #check if amass config is at least exported
                if [ -z "$amass_config" ]; then
                # Check if default amass config file exists
                   if [[ -f $amass_config_def ]]; then
                    echo -e "${GREEN}ⓘ Using default ${BLUE}amass config file${NC}: ${PURPLE}$amass_config_def${NC}\n"
                    export amass_config=$amass_config_def
                 else
                    echo -e "${RED}\u2717 Couldn't find${NC} the default${PURPLE} amass config file${NC}: ${RED}$amass_config_def${NC}"
                    echo -e "${YELLOW}specify it manually using${NC} ${BLUE}-a${NC} | ${BLUE}--amass${NC}\n"
                    echo -e "${RED}\u2717 Fatal${NC}: Neither one of${PURPLE} amass${NC} | ${PURPLE}subfinder${NC}  ${BLUE}options was used${NC} nor a ${PURPLE}default config file${NC} [${GREEN}amass${NC}: ${PURPLE}$amass_config_def${NC} ${RED}Not Found${NC}] [${GREEN}subfinder${NC}: ${PURPLE}$subfinder_config_def${NC} ${RED}Not Found${NC}]\n"
                exit 1
                fi
            fi
        fi     
else
    echo -e "${GREEN}ⓘ Using Specified ${BLUE}subfinder config file${NC}: ${PURPLE}$subfinder_config${NC}\n"  
         if [ ! -f  $subfinder_config ]; then 
            echo -e "${RED}\u2717 Fatal${NC}: [ ${BLUE}subfinder config file${NC}: ${PURPLE}$subfinder_config${NC} ${RED}Not Found${NC} ]"
              if  [ -f  $subfinder_config_def ]; then  
                 echo -e "${GREEN}ⓘ Using default ${BLUE}subfinder config file${NC}: ${PURPLE}$subfinder_config_def${NC}\n"            
                 export subfinder_config=$subfinder_config_def
              else
                 echo -e "${RED}\u2717 Fatal${NC}: [ ${BLUE}Default${NC}: ${PURPLE}$subfinder_config_def${NC} ${RED}also Not Found${NC} ]\n"              
              fi        
         fi       
fi

#Re Check
#subfinder
if [ -n "$subfinder_config" ] && [ -e "$subfinder_config" ]; then
  echo -e "${YELLOW}Check ${GREEN}Subfinder${NC} ${YELLOW}?${NC} : ${BLUE}Yes $(echo -e "${GREEN}\u2713${NC}")${NC}"
else
  echo -e "${YELLOW}Check ${GREEN}Subfinder${NC} ${YELLOW}?${NC} : ${RED}No $(echo -e "${RED}\u2717${NC}")${NC}"
fi
#whether to show usage quotas     
if [ -z "$quota" ]; then
   echo -e "${YELLOW}Show ${BLUE}Quota Usage${YELLOW} ?${NC} : ${RED}No $(echo -e "${RED}\u2717${NC}")${NC}"
else
   echo -e "${YELLOW}Show ${BLUE}Quota Usage${YELLOW} ?${NC} : ${BLUE}Yes $(echo -e "${GREEN}\u2713${NC}")${NC}"     
fi 
echo -e "\n"
echo -e "${YELLOW}ⓘ Some API Checks will take${RED} longer${NC} to avoid ${GREEN}rate limits${NC} (Shodan, etc)\n ${BLUE}Please have ${GREEN}Patience${NC}\n"


#subfinder parser
if [ -n "$subfinder_config" ]; then
    subfinder_config_parsed=$(mktemp)
        #Parse using yq
        if ! yq e .$subfinder_config > /dev/null 2>&1; then
              echo -e "${RED}✘ Error${NC}: ${BLUE}$subfinder_config${NC} is not a valid ${YELLOW}YAML${NC}"
              echo -e "Please ${YELLOW}double check${NC} your ${BLUE}$subfinder_config${NC}"
              echo -e "${YELLOW}Validate${NC} using : ${BLUE}https://www.yamllint.com/${NC}"              
              exit 1
        else
           cat $subfinder_config | yq '... comments=""' > $subfinder_config_parsed   
         fi
echo -e "${PINK}\n"
cat << "EOF"         
                     __    _____           __         
   _______  __/ /_  / __(_)___  ____/ /__  _____
  / ___/ / / / __ \/ /_/ / __ \/ __  / _ \/ ___/
 (__  ) /_/ / /_/ / __/ / / / / /_/ /  __/ /    
/____/\__,_/_.___/_/ /_/_/ /_/\__,_/\___/_/   
EOF
echo -e "${NC}"
   #AlienVault
     alienvault_api_keys=$(yq eval '.alienvault[]' $subfinder_config_parsed)
     invalid_key_found=false
          if [ -n "$alienvault_api_keys" ]; then
                  i=1
                  while IFS=':' read -r api_key; do
                  var_name="alienvault_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$alienvault_api_keys"
                    for ((j=1; ; j++)); do
                          var_name="alienvault_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://otx.alienvault.com/api/v1/user/me" -H "X-OTX-API-KEY: $api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} AlienVault${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC} or ${RED}Quota Exceeded${NC}"
                       invalid_key_found=true
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} AlienVault${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
    #BeVigil
     BeVigil_api_keys=$(yq eval '.bevigil[]' $subfinder_config_parsed)
     invalid_key_found=false
          if [ -n "$BeVigil_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="BeVigil_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$BeVigil_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="BeVigil_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://osint.bevigil.com/api/example.com/apps/" -H "X-Access-Token: $api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} BeVigil${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [ "$status_code" = "402" ]; then
                          echo -e "ⓘ ${VIOLET} BeVigil${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Quota Exceeded${NC}"
                        invalid_key_found=true
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} AlienVault${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
   ##BinaryEdge  
    BinaryEdge_api_keys=$(yq eval '.binaryedge[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$BinaryEdge_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="BinaryEdge_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$BinaryEdge_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="BinaryEdge_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://api.binaryedge.io/v2/user/subscription" -H "X-Key: $api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ]; then
                       echo -e "ⓘ ${VIOLET} BinaryEdge${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [ "$status_code" = "403" ]; then
                         echo -e "ⓘ ${VIOLET} BeVigil${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Quota Exceeded${NC}"
                       invalid_key_found=true
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                           echo -e "ⓘ ${VIOLET} BinaryEdge${NC}"
                           export BINARY_EDGE_API_KEY="$api_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"
                           python3 "/tmp/aki/bin/apikeybeast.py" -s binaryedge     
                           echo -e "\n"                 
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} BinaryEdge${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
     #censys  
     censys_Creds=$(yq eval '.censys[]' $subfinder_config_parsed)
     invalid_key_found=false
     if [ -n "$censys_Creds" ]; then
            for api_key in $censys_Creds
            do
                export encoded_key=$(printf $api_key | tr -d '[:space:]' | base64 | tr -d '[:space:]')
                          response=$(curl -qski "https://search.censys.io/api/v1/account" -H "accept: application/json" -H "Authorization: Basic $encoded_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} Censys${NC} ${YELLOW}API key : Secret${NC} = ${BLUE}$(echo -n "$encoded_key" | base64 -d)${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                           echo -e "ⓘ ${VIOLET} Censys${NC}"
                           export CENSYS_USERNAME=$(curl -qsk "https://search.censys.io/api/v1/account" -H "Authorization: Basic $encoded_key" -H "Accept: application/json" | jq -r '.login')                           
                           export CENSYS_AUTH="$encoded_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s censys      
                           echo -e "\n"    
                     fi
            done
         if ! $invalid_key_found; then
            echo -e "ⓘ ${VIOLET} censys${NC} : ${GREEN}\u2713${NC}"  
         fi  
      fi  
   ##certspotter  
    certspotter_api_keys=$(yq eval '.certspotter[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$certspotter_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="certspotter_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$certspotter_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="certspotter_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://api.certspotter.com/v1/issuances?domain=example.com" -u "$api_key:")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ]; then
                       echo -e "ⓘ ${VIOLET} certspotter${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [ "$status_code" = "403" ]; then
                         echo -e "ⓘ ${VIOLET} BeVigil${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Quota Exceeded${NC}"
                       invalid_key_found=true
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} certspotter${NC} : ${GREEN}\u2713${NC}"  
             fi  
         fi
   #Chaos  
    Chaos_api_keys=$(yq eval '.chaos[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$Chaos_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="Chaos_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$Chaos_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="Chaos_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://dns.projectdiscovery.io/dns/example.com/subdomains" -H "Authorization: $api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} Chaos${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} Chaos${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi   
   #fofa
    fofa_api_keys=$(yq eval '.fofa[]' $subfinder_config_parsed)
     invalid_key_found=false
     if [ -n "$fofa_api_keys" ]; then
              i=1
              while read -r api_key; do
              varname="fofa_cred_$i"
              eval "$varname=\"$api_key\""
               i=$((i+1))
             done <<< "$fofa_api_keys"
            # curl
             for ((j=1; ; j++)); do
               var_name="fofa_cred_$j"
               api_key=${!var_name}
               if [ -z "$api_key" ]; then
                break
                fi
              response=$(curl -qfsSL "https://fofa.info/api/v1/info/my?email=${api_key%:*}&key=${api_key#*:}" -H "Accept: application/json" | jq -r '.error')
              if echo "$response" | grep -q "true"; then
                  echo -e "ⓘ ${VIOLET} fofa${NC} ${YELLOW}fofa_api_email : fofa_api_key${NC} = ${BLUE}${NC}${api_key} ${RED}\u2717 Invalid${NC}"
                  invalid_key_found=true
              fi
            done
         if ! $invalid_key_found; then
            echo -e "ⓘ ${VIOLET} fofa${NC} : ${GREEN}\u2713${NC}"  
         fi  
      fi                  
   #FullHunt  
    FullHunt_api_keys=$(yq eval '.fullhunt[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$FullHunt_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="FullHunt_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$FullHunt_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="FullHunt_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl --ipv4 -qski "https://fullhunt.io/api/v1/domain/example.com/subdomains" -H "X-API-KEY: $api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} FullHunt${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} FullHunt${NC}"
                           export FullHunt_USERNAME=$(curl -qsk "https://fullhunt.io/api/v1/auth/status" -H "X-API-KEY: $api_key" -H "Accept: application/json" | jq -r '.user.first_name')
                           export FullHunt_API_KEY="$api_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s fullhunt      
                           echo -e "\n"                           
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} FullHunt${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
    ##github, --gh    
        GitHub_api_keys=$(yq eval '.github[]' $subfinder_config_parsed)
        invalid_key_found=false
              if [ -n "$GitHub_api_keys" ]; then
                echo -e "ⓘ ${VIOLET} Github${NC} has ${YELLOW}Rate Limits${NC} so have ${GREEN}Patience${NC}"
                      i=1
                      while read -r api_key; do
                      var_name="GitHub_api_key_$i"
                      eval "$var_name=\"$api_key\""
                      i=$((i+1))
                      done <<< "$GitHub_api_keys"
                         #curl
                        for ((j=1; ; j++)); do
                              var_name="GitHub_api_key_$j"
                              api_key=${!var_name}
                         if [ -z "$api_key" ]; then
                           break
                         fi
                          response=$(curl -qski  "https://api.github.com/user" -H "Authorization: Bearer $api_key" -H "Accept: application/vnd.github+json"  && sleep 20s)
                          if echo "$response" | grep -q "Bad credentials"; then   
                           echo -e "ⓘ ${VIOLET} GitHub${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                           invalid_key_found=true                           
                          elif [ "$status_code" = "403" ]; then
                           echo -e "ⓘ ${VIOLET} GitHub${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}! 403 Forbidden${NC}"     
                           invalid_key_found=true                                                          
                          fi
                  done
                  if ! $invalid_key_found; then
                      echo -e "ⓘ ${VIOLET} GitHub${NC} : ${GREEN}\u2713${NC}"  
                  fi  
             fi 
   #Hunter  
    Hunter_api_keys=$(yq eval '.hunter[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$Hunter_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="Hunter_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$Hunter_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="Hunter_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://api.hunter.io/v2/domain-search?domain=example.com&api_key=$api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} Hunter${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} Hunter${NC}"
                           export HUNTER_USER=$(curl -qsk "https://api.hunter.io/v2/account?api_key=$api_key" -H "Accept: application/json" | jq -r '.data.first_name')
                           export HUNTER_API_KEY="$api_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s hunterio      
                           echo -e "\n"                           
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} Hunter${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
   #IntelX  
    IntelX_api_keys=$(yq eval '.intelx[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$IntelX_api_keys" ]; then
          echo -e "ⓘ ${VIOLET} IntelX${NC} has ${YELLOW}Rate Limits${NC} so have ${GREEN}Patience${NC}"
          echo -e "If ${RED}too may errors${NC}\n ${YELLOW}Try Manually${NC}: ${BLUE} https://github.com/Azathothas/BugGPT-Tools/tree/main/aki#verification${NC}" 
                  i=1
                  while read -r api_key; do
                  var_name="IntelX_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$IntelX_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="IntelX_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl --ipv4 -qski "https://2.intelx.io/authenticate/info" "x-key:$api_key" && sleep 30s)
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} IntelX${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} IntelX${NC}"
                           export INTELX_API_KEY="$api_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s intelx   
                           sleep 62s   
                           echo -e "\n"                           
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} IntelX${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi         
   #PassiveTotal  
    PassiveTotal_api_keys=$(yq eval '.passivetotal[]' $subfinder_config_parsed)
       invalid_key_found=false
         if [ -n "$PassiveTotal_api_keys" ]; then
                  for api_key in $PassiveTotal_api_keys
                   do
                   encoded_key=$(printf $api_key | tr -d '[:space:]' | base64 | tr -d '[:space:]')
                         response=$(curl -qski "https://api.riskiq.net/pt/v2/account/quota" -H "Authorization: Basic $encoded_key")
                         status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                    if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                      echo -e "ⓘ ${VIOLET} PassiveTotal${NC} ${YELLOW}API key : Secret${NC} = ${BLUE}$(echo -n "$encoded_key" | base64 -d)${NC} ${RED}\u2717 Invalid${NC}"
                      invalid_key_found=true
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} PassiveTotal${NC}"
                           export PASSIVE_TOTAL_USERNAME=$(curl -qsk "https://api.riskiq.net/pt/v2/account/quota" -H "Authorization: Basic $encoded_key" -H "Accept: application/json" | jq -r '.user.owner')
                           export PASSIVE_TOTAL_API_KEY="$encoded_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s passivetotal   
                           echo -e "\n"                           
                     fi
             done
             if ! $invalid_key_found; then
                 echo -e "ⓘ ${VIOLET} PassiveTotal${NC} : ${GREEN}\u2713${NC}"  
             fi  
        fi     
   #quake  
    quake_api_keys=$(yq eval '.quake[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$quake_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="quake_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$quake_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="quake_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qfsSL "https://quake.360.net/api/v3/user/info" -H "X-QuakeToken: $api_key" -H "Accept: application/json" | jq .)
                          status_code=$(curl -qski "https://quake.360.net/api/v3/user/info" -H "X-QuakeToken: $api_key" -H "Accept: application/json" | awk '/HTTP/{print $2}')
                      if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then  
                       echo -e "ⓘ ${VIOLET} quake${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}! Invalid${NC}" 
                       invalid_key_found=true
                      elif echo "$response" | jq -r '.data.baned' | grep -q "true"; then
                       echo -e "ⓘ ${VIOLET} quake${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Banned${NC}"
                       invalid_key_found=true
                     elif [[ -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} quake${NC}"
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}" 
                           echo -e "${BLUE} Remaining Credits = ${YELLOW}$(echo $response | jq -r '.data.month_remaining_credit')${NC}"
                           echo -e "\n"                           
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} quake${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi           
   #SecurityTrails  
    SecurityTrails_api_keys=$(yq eval '.securitytrails[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$SecurityTrails_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="SecurityTrails_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$SecurityTrails_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="SecurityTrails_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://api.securitytrails.com/v1/domain/example.com/subdomains" -H "APIKEY:$api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} SecurityTrails${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [ "$status_code" = "429" ]; then
                      echo -e "ⓘ ${VIOLET} SecurityTrails${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED} Quota Exceeded${NC}"
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} SecurityTrails${NC}"                          
                           export SECURITY_TRAILS_API_KEY="$api_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s securitytrails   
                           echo -e "\n"                           
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} SecurityTrails${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
   #Shodan  
    Shodan_api_keys=$(yq eval '.shodan[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$Shodan_api_keys" ]; then
              echo -e "ⓘ ${VIOLET} Shodan${NC} has ${YELLOW}Rate Limits${NC} so have ${GREEN}Patience${NC}"           
                  i=1
                  while read -r api_key; do
                  var_name="Shodan_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$Shodan_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="Shodan_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://api.shodan.io/api-info?key=$api_key" -H "Accept: application/json")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} Shodan${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [ "$status_code" = "429" ]; then
                       echo -e "ⓘ ${VIOLET} Shodan${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Failed Checks${NC} [${YELLOW}429: Too many requests${NC}]"
                       invalid_key_found=true   
                     elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} Shodan${NC}"
                           export SHODAN_API_KEY="$api_key" 
                           export SHODAN_USERNAME=$(curl -qsk "https://api.shodan.io/account/profile?key=$api_key" -H "Accept: application/json" | jq -r '.display_name')
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s shodan      
                           echo -e "\n"                           
                     fi                     
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} Shodan${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
   #URLScan  
    URLScan_api_keys=$(yq eval '.urlscan[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$URLScan_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="URLScan_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$URLScan_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="URLScan_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://urlscan.io/user/quotas/" -H "API-Key: $api_key" -H "Content-Type: application/json")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "400" ] || [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} URLScan${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                      elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} URLScan${NC}"
                           export URLSCANIO_API_KEY="$api_key" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s urlscan   
                           echo -e "\n"                           
                     fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} URLScan${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
   #VirusTotal  
    VirusTotal_api_keys=$(yq eval '.virustotal[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$VirusTotal_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="VirusTotal_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$VirusTotal_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="VirusTotal_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://www.virustotal.com/api/v3/ip_addresses/1.1.1.1" -H "x-apikey: $api_key" -H "Content-Type: application/json")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} VirusTotal${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif [ "$status_code" = "429" ]; then
                        echo -e "ⓘ ${VIOLET} VirusTotal${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED} Quota Exceeded${NC}"
                       invalid_key_found=true
                     fi 
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} VirusTotal${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
   #WhoisXML  
    WhoisXML_api_keys=$(yq eval '.whoisxmlapi[]' $subfinder_config_parsed)
    invalid_key_found=false
          if [ -n "$WhoisXML_api_keys" ]; then
                  i=1
                  while read -r api_key; do
                  var_name="WhoisXML_api_key_$i"
                  eval "$var_name=\"$api_key\""
                  i=$((i+1))
                  done <<< "$WhoisXML_api_keys"
                     #curl
                    for ((j=1; ; j++)); do
                          var_name="WhoisXML_api_key_$j"
                          api_key=${!var_name}
                     if [ -z "$api_key" ]; then
                       break
                     fi
                          response=$(curl -qski "https://user.whoisxmlapi.com/user-service/account-balance?apiKey=$api_key")
                          status_code=$(echo "$response" | awk '/HTTP/{print $2}')
                     if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                       echo -e "ⓘ ${VIOLET} WhoisXML${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Invalid${NC}"
                       invalid_key_found=true
                     elif echo "$response" | grep -q '"credits": 0'; then
                       echo -e "ⓘ ${VIOLET} WhoisXML${NC} ${YELLOW}API key${NC} = ${BLUE}$api_key${NC} ${RED}\u2717 Useless${NC} [${PINK}500${NC}/${PURPLE}500 ${RED}USED${NC}]"
                       echo -e "ⓘ  Create a${YELLOW} new Account${NC} : ${BLUE}https://whois.whoisxmlapi.com/signup?lang=en${NC}"
                       invalid_key_found=true                        
                      elif [[ "$status_code" = "200" && -n "$quota" ]]; then                       
                               echo -e "ⓘ ${VIOLET} WhoisXML${NC}"
                               export WHOIS_XML_API_KEY="$api_key" 
                               echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                               python3 "/tmp/aki/bin/apikeybeast.py" -s whoisxmlapi   
                               echo -e "\n"                             
                      fi
              done
              if ! $invalid_key_found; then
                  echo -e "ⓘ ${VIOLET} WhoisXML${NC} : ${GREEN}\u2713${NC}"  
              fi  
         fi
   #ZoomEye  
     ZoomEye_Creds=$(yq eval '.zoomeye[]' $subfinder_config_parsed)
     invalid_key_found=false
     if [ -n "$ZoomEye_Creds" ]; then
            for api_key in $ZoomEye_Creds
            do
                encoded_key=$(echo $api_key | base64)
                response=$(curl -qski "https://api.zoomeye.org/user/login" -H "accept: application/json" -H "Content-Type: application/json" -d "{\"username\":\"${api_key%:*}\", \"password\":\"${api_key#*:}\"}")
                status_code=$(echo "$response" | awk '/HTTP/{print $2}')
              if [ "$status_code" = "423" ] || [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                  echo -e "ⓘ ${VIOLET} ZoomEye${NC} ${YELLOW}Username:Password${NC} = ${BLUE}${api_key}${NC} ${RED}\u2717 Invalid${NC}"
                  invalid_key_found=true
              elif [[ "$status_code" = "200" && -n "$quota" ]]; then
                          echo -e "ⓘ ${VIOLET} ZoomEye${NC}"
                           export ZOOMEYE_USERNAME="${api_key%:*}"
                           export ZOOMEYE_PASSWORD="${api_key#*:}" 
                           echo -e "${YELLOW}API key${NC} : ${PURPLE}$api_key${NC}"                            
                           python3 "/tmp/aki/bin/apikeybeast.py" -s zoomeye   
                           echo -e "\n"                           
               fi
            done
         if ! $invalid_key_found; then
            echo -e "ⓘ ${VIOLET} ZoomEye${NC} : ${GREEN}\u2713${NC}"  
         fi  
      fi
   #ZoomEyeAPI  
     ZoomEye_api_keys=$(yq eval '.zoomeyeapi[]' $subfinder_config_parsed)
     invalid_key_found=false
     if [ -n "$ZoomEye_api_keys" ]; then
              i=1
              while read -r api_key; do
              varname="ZoomEye_cred_$i"
              eval "$varname=\"$api_key\""
               i=$((i+1))
             done <<< "$ZoomEye_api_keys"
            # curl
             for ((j=1; ; j++)); do
               var_name="ZoomEye_cred_$j"
               api_key=${!var_name}
               if [ -z "$api_key" ]; then
                break
                fi
              response=$(curl -qski "https://api.zoomeye.org/host/search?query=port:69" -H "API-KEY:$api_key")
              status_code=$(echo "$response" | awk '/HTTP/{print $2}')
              if [ "$status_code" = "401" ] || [ "$status_code" = "403" ]; then
                  echo -e "ⓘ ${VIOLET} ZoomEye${NC} ${YELLOW}apikey${NC} = ${BLUE}${NC}${api_key} ${RED}\u2717 Invalid${NC}"
                  invalid_key_found=true
              elif [ "$status_code" = "402" ]; then   
                  echo -e "ⓘ ${VIOLET} ZoomEye${NC} ${YELLOW}apikey${NC} = ${BLUE}${NC}${api_key} ${RED}\u2717 Quota Exceeded${NC}"
                  invalid_key_found=true     
              elif [ "$status_code" = "429" ]; then   
                  echo -e "ⓘ ${VIOLET} ZoomEye${NC} ${YELLOW}apikey${NC} = ${BLUE}${NC}${api_key} ${RED}\u2717 Rate Limited${NC}"
                  invalid_key_found=true                             
              fi
            done
         if ! $invalid_key_found; then
            echo -e "ⓘ ${VIOLET} ZoomEyeAPI${NC} : ${GREEN}\u2713${NC}"  
         fi  
      fi  
#EOF subfnder         
fi
#############
