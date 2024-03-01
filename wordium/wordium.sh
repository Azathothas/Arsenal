#!/usr/bin/bash

#A bit of Styling
RED='\033[31m'
GREEN='\033[32m'
DGREEN='\033[38;5;28m'
GREY='\033[37m'
BLUE='\033[34m'
YELLOW='\033[33m'
PURPLE='\033[35m'
PINK='\033[38;5;206m'
RESET='\033[0m'
NC='\033[0m'
#----------------------------------------------------------------------------#
#Banner
echo -e "${PURPLE}"
cat << "EOF"
        ╭┳╮
╭┳┳┳━┳┳┳╯┣╋┳┳━━╮
┃W┃O┃R╭┫D┃I┃U┃M┃
╰━━┻━┻╯╰━┻┻━┻┻┻╯
EOF
echo -e "${NC}"
##Currently Tracking Wordlists:
# ~ >  70K --> https://github.com/reewardius/bbFuzzing.txt
# ~ >   5K --> https://github.com/Bo0oM/fuzz.txt
# ~ > 180K --> https://github.com/thehlopster/hfuzz
# ~ > 1.8K --> https://github.com/ayoubfathi/leaky-paths
# ~ > 760K --> https://github.com/six2dez/OneListForAll
# ~ > 1.1M --> https://github.com/rix4uni/WordList
##Optimal Goal
# x_mini.txt      --> ~ <  15K 
# x_lhf_mini.txt  --> ~ <  50K
# x_lhf_mid.txt   --> ~ < 100K
# x_lhf_large.txt --> ~ < 500K
# x_massive.txt   --> ~ <   1M
#----------------------------------------------------------------------------#
#Help / Usage
if [[ "$*" == *"-h"* ]] || [[ "$*" == *"--help"* ]] || [[ "$*" == *"help"* ]] ; then
  echo -e "${YELLOW}➼ Usage${NC}: ${PURPLE}wordium${NC} ${BLUE}-w${NC} ${GREEN}</path/to/your/wordlist/directory> ${NC}"
       if [ -z "$WORDLIST" ]; then
         echo -e "${BLUE}Current Default${NC}: ${GREEN}$(echo $HOME/Wordlist)${NC}\n"  
       else
         echo -e "${BLUE}Current Default${NC}: ${GREEN}$(echo $WORDLIST)${NC}\n"
       fi
  echo -e "${YELLOW}Extended Help${NC}"
  echo -e "${BLUE}-w${NC},  ${BLUE}--wordlist-dir${NC}     Specify where to create your wordlists (${YELLOW}Required${NC}, else specify as ${GREEN}\$WORDLIST${NC} in ${RED}\$ENV:VAR)${NC}\n"
  echo -e "${BLUE}-q${NC},  ${BLUE}--quick${NC}            ${GREEN}Quick Mode${NC} [${YELLOW}Only Use if ${RED}not first time${NC}]"
  echo -e "${YELLOW}Example Usage${NC}: "
  echo -e "${PURPLE}wordium${NC} -w ${BLUE}/tmp/wordlists${NC}\n"  
  echo -e "➼ ${YELLOW}Don't Worry${NC} if your ${RED}Terminal Hangs${NC} for a bit.. It's a feature not a bug"
  exit 0
fi
#----------------------------------------------------------------------------#
# Parse command line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -w|--wordlist-dir)
         if [ -z "$2" ]; then
             echo -e "${RED}Error: ${YELLOW}Wordlist Directory${NC} is missing for option ${BLUE}'-w | --wordlist-dir'${NC}"
             exit 1
         fi        
        WORDLIST="$(realpath "$2")"
        shift 
        shift 
        ;;                                                        
        *)    
        echo -e "${RED}Error: Invalid option ${YELLOW}'$key'${NC} , see ${BLUE}--help${NC} for Usage"
        exit 1
        ;;
    esac
done
#----------------------------------------------------------------------------#
#Check Git
# For Github runner, pings are disabled
# https://github.com/actions/runner-images/issues/1519
if [ "$(whoami)" = "runner" ]; then
    if ! curl -s --head https://github.com | grep "200" > /dev/null; then
        echo -e "${RED}\u2717 Fatal${NC}: ${YELLOW}Error Connecting to ${PURPLE}GitHub${NC}\n"
        exit 1
    fi
else
    if ! ping -c 5 github.com > /dev/null; then
        echo -e "${RED}\u2717 Fatal${NC}: ${YELLOW}No Internet${NC}\n"
        exit 1
    fi
fi
#----------------------------------------------------------------------------#
# Check if WORDLIST is already set in the environment
if [ -z "$WORDLIST" ]; then
  echo -e "Path for ${BLUE}WORDLIST${NC} is ${RED}not set in the environment or specified as an option.${NC}" >&2
  echo -e "➼ Will choose ${BLUE}$HOME/Wordlist${NC} as default directory"
  echo -e "➼ ${YELLOW}If You don't want that, hit ${RED}ctrl + c${NC} now!"
  echo -e "➼ ${YELLOW}Waiting 10 Seconds${NC} ${GREEN}before continuing${NC} in ${BLUE}$HOME/Wordlist${NC}" && sleep 15s
  mkdir -p $HOME/Wordlist
  export WORDLIST="$HOME/Wordlist" 
  cd "$WORDLIST"
else
  echo -e "➼ ${YELLOW}Specified Wordlist Directory${NC}: ${BLUE}$(echo $WORDLIST)${NC}\n" && sleep 5s
  mkdir -p "$WORDLIST" && cd "$WORDLIST"
fi
#----------------------------------------------------------------------------#
# Sanity Checks
tmp_bin="$(mktemp -d)" && export tmp_bin="$tmp_bin"
export PATH="$tmp_bin:$PATH"
#anew
if ! command -v anew >/dev/null 2>&1; then
   curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/anew-rs" -o "$tmp_bin/anew-rs"
   chmod +xwr "$tmp_bin/anew-rs"
fi
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#Dirs
dirs=("$WORDLIST/bbFuzzing.txt" "$WORDLIST/fuzz.txt" "$WORDLIST/hfuzz" "$WORDLIST/leaky-paths" "$WORDLIST/OneListForAll" "$WORDLIST/WordList")
#paths for redundancy 
paths=("$WORDLIST/bbFuzzing.txt/bbFuzzing.txt" "$WORDLIST/fuzz.txt/fuzz.txt" "$WORDLIST/hfuzz/hfuzz.txt" "$WORDLIST/leaky-paths/leaky-paths.txt" "$WORDLIST/OneListForAll/onelistforallmicro.txt" "$WORDLIST/WordList/onelistforall.txt")   
#funcs
setup_dirs_base(){
    echo -e "${YELLOW}This will take quite some time${NC} (If first run)" 
    echo -e "Depending on your ${YELLOW}internet${NC}, it ${RED}may take upto 1 hr${NC}" 
    echo -e "${BLUE}Just let your terminal be!${NC}"  
    git config --global --add safe.directory $(pwd)
    #Rood's base for lhf wordlists
    wordium_rood_lhf=$(mktemp)
    wget --quiet https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/Deps/rood_lhf.txt -O $wordium_rood_lhf
    cat "$wordium_rood_lhf" | anew-rs -q "$WORDLIST/x_lhf_mini.txt"
}
setup_dirs_submodules(){
    echo -e "ⓘ  ${BLUE}Proceeding${NC} with ${PINK}Submodules${NC}"
    #Submodules
    git submodule add "https://github.com/reewardius/bbFuzzing.txt"
    git submodule add "https://github.com/Bo0oM/fuzz.txt"
    git submodule add "https://github.com/thehlopster/hfuzz"
    git submodule add "https://github.com/ayoubfathi/leaky-paths"
    git submodule add "https://github.com/six2dez/OneListForAll"
    git submodule add "https://github.com/rix4uni/WordList"
}   
setup_dirs_clones(){
   echo -e "No Git ${YELLOW}(.git)${NC} folder found in "$WORDLIST" or its parent directories!"
   echo -e "Proceeding with ${BLUE}git clone${NC}\n"
    #Clones
    cd "$WORDLIST"
    git clone --filter "blob:none" "https://github.com/reewardius/bbFuzzing.txt"
    git clone --filter "blob:none" "https://github.com/Bo0oM/fuzz.txt"
    git clone --filter "blob:none" "https://github.com/thehlopster/hfuzz"
    git clone --filter "blob:none" "https://github.com/ayoubfathi/leaky-paths"
    git clone --filter "blob:none" "https://github.com/six2dez/OneListForAll"
    git clone --filter "blob:none" "https://github.com/rix4uni/WordList"
}
#----------------------------------------------------------------------------#
#main check
setup_wordlist(){
   for dir in "${dirs[@]}"; do
      if [ ! -d "$dir" ]; then 
       echo -e "${RED}\u2717 Error${NC}: ${BLUE}"$dir"${RED} not found${NC}"   
        if [ -d "../$dir/.git" ]; then
           echo -e "ⓘ  ${PINK}Git ${YELLOW}(.git)${NC} detected in ${YELLOW}"../$dir/.git"${NC}"
           setup_dirs_base && setup_dirs_submodules
        elif [ -d "../../$dir/.git" ]; then
           echo -e "ⓘ  ${PINK}Git ${YELLOW}(.git)${NC} detected in ${YELLOW}"../../$dir/.git"${NC}"
           setup_dirs_base && setup_dirs_submodules  
        elif [ -d "../../../$dir/.git" ]; then
           echo -e "ⓘ  ${PINK}Git ${YELLOW}(.git)${NC} detected in ${YELLOW}"../../../$dir/.git"${NC}"
           setup_dirs_base ; setup_dirs_submodules
        else
           setup_dirs_base ; setup_dirs_clones
        fi
        #Mark Safe
        find "$WORDLIST" -type d -exec sh -c 'cd "$0" && git config --global --add safe.directory "$(pwd)"' {} \; 2>/dev/null
      fi      
   done
}
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#Git Pull
for path in "${paths[@]}"; do
  if [ ! -f "$path" ]; then
      echo -e "${RED}\u2717 Error${NC}: ${BLUE}$path${RED} not found${NC}"
      echo -e "${PURPLE}Reinstalling....${NC}\n"
      setup_wordlist
  else #update git deps
  updates_made=false
    for dir in "${dirs[@]}"; do  
       if [ -d "$dir" ]; then 
          echo -e "${BLUE}Updating ${PURPLE}"$dir" ${YELLOW}to ${DGREEN}@latest${NC}"
          if cd "$dir" && git config --global --add safe.directory "$(pwd)" 2>/dev/null; then
             if [[ $(git pull) == *"Already up to date."* ]]; then
               echo -e "${YELLOW}ⓘ Already ${DGREEN}@latest${NC}" 
             else
               echo -e "${GREEN}\u2713 Fetched${DGREEN} <----> ${PURPLE}Synced ${NC}"
               updates_made=true
             fi  
          else #reset & resolve conflict
             cd "$dir" && git config --global --add safe.directory "$(pwd)" 2>/dev/null && git fetch --all 2>/dev/null && git reset --hard origin/main 2>/dev/null && git clean -fd 2>/dev/null  
             if [[ $(git pull) == *"Already up to date."* ]]; then
               echo -e "${YELLOW}ⓘ Already ${DGREEN}@latest${NC}" 
               updates_made=true
             else
               echo -e "${GREEN}\u2713 Fetched${DGREEN} <----> ${PURPLE}Synced ${NC}"
               updates_made=true
             fi 
          fi          
       fi
    done  
    if ! "$updates_made"; then
      break  # Exit the loop if no updates were made
    fi    
  fi  
done
#----------------------------------------------------------------------------#

# #Sync Repos to @latest
# find "$WORDLIST" -type d -exec sh -c 'cd "$0" && git config --global --add safe.directory "$(pwd)"' {} \; 2>/dev/null
# echo -e "\n"
# find "$WORDLIST" -maxdepth 1 -type d -exec sh -c '(cd {} && echo "Updating {} to @latest" && git pull 2>/dev/null )' \;
# echo -e "\n"

#----------------------------------------------------------------------------#
#Begins
#echo -e "➼${YELLOW}Fetching & Updating${NC} from ${BLUE}WORDLIST/WORDLIST${NC} \n" 
#echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : $()${NC}" 
##Prints anything with . (dot)
#grep -E '^\.' file.txt
## Removes lines with digits, and removes slashes from beginning of each line 
#sed '/[0-9]/d' file.txt | sed '/^[[:space:]]*$/d' | sed 's#^/##'
#Init
echo "test" | anew-rs -q $WORDLIST/x_lhf_mini.txt
lhf_mini_lines=$(wc -l < $WORDLIST/x_lhf_mini.txt)
#----------------------------------------------------------------------------#
## --> Bo0oM/fuzz.txt
echo ""
echo -e "➼ ${YELLOW}Fetching & Updating${NC} ${DGREEN}<-- ${BLUE}Bo0oM/fuzz.txt${NC}" 
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(grep -E '^\.' $WORDLIST/fuzz.txt/fuzz.txt | anew-rs $WORDLIST/x_lhf_mini.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_lhf_mid.txt${NC}  : ${GREEN}$(cat $WORDLIST/fuzz.txt/fuzz.txt | anew-rs $WORDLIST/x_lhf_mid.txt | wc -l)${NC}\n" 
#----------------------------------------------------------------------------#
## --> reewardius/bbFuzzing.txt
echo -e "➼ ${YELLOW}Fetching & Updating${NC} ${DGREEN}<-- ${BLUE}reewardius/bbFuzzing.txt${NC}"
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(grep -E '^\.' $WORDLIST/bbFuzzing.txt/bbFuzzing.txt | anew-rs $WORDLIST/x_lhf_mini.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_lhf_mid.txt ${NC}  : ${GREEN}$(cat $WORDLIST/bbFuzzing.txt/bbFuzzing.txt | grep -Ei 'api|build|conf|dev|env|git|graph|helm|json|kube|k8|sql|swagger|xml|yaml|yml|wadl|wsdl' | anew-rs $WORDLIST/x_lhf_mid.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_lhf_large.txt${NC}  : ${GREEN}$(cat $WORDLIST/bbFuzzing.txt/bbFuzzing.txt | anew-rs $WORDLIST/x_lhf_large.txt | wc -l)${NC}\n" 
#----------------------------------------------------------------------------#
## --> thehlopster/hfuzz
echo -e "➼ ${YELLOW}Fetching & Updating${NC} ${DGREEN}<-- ${BLUE}thehlopster/hfuzz${NC}" 
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(grep -E '^\.' $WORDLIST/hfuzz/hfuzz.txt | anew-rs $WORDLIST/x_lhf_mini.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x-lhf-large.txt${NC}  : ${GREEN}$(sed '/[0-9]/d' $WORDLIST/hfuzz/hfuzz.txt | sed '/^[[:space:]]*$/d' | sed 's#^/##' |  grep -Ei 'api|build|conf|dev|env|git|graph|helm|json|kube|k8|sql|swagger|xml|yaml|yml|wadl|wsdl' | anew-rs $WORDLIST/x_lhf_large.txt | wc -l)${NC}\n" 
#----------------------------------------------------------------------------#
## --> ayoubfathi/leaky-paths
echo -e "➼ ${YELLOW}Fetching & Updating${NC} ${DGREEN}<-- ${BLUE}ayoubfathi/leaky-paths${NC}" 
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(sed '/[0-9]/d' $WORDLIST/leaky-paths/leaky-paths.txt | sed '/^[[:space:]]*$/d' | anew-rs $WORDLIST/x_lhf_mini.txt | wc -l)${NC}\n" 
#----------------------------------------------------------------------------#
## --> Six2dez/OneListForAll
echo -e "➼ ${YELLOW}Fetching & Updating${NC} ${DGREEN}<-- ${BLUE}Six2dez/OneListForAll${NC}" 
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(grep -E '^\.' $WORDLIST/OneListForAll/onelistforallmicro.txt | anew-rs $WORDLIST/x_lhf_mini.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_lhf_large.txt${NC}  : ${GREEN}$(cat $WORDLIST/OneListForAll/onelistforallshort.txt | grep -Ei 'api|build|conf|dev|env|git|graph|helm|json|kube|k8|sql|swagger|xml|yaml|yml|wadl|wsdl' | anew-rs $WORDLIST/x_lhf_large.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_massive.txt${NC}  : ${GREEN}$(cat $WORDLIST/OneListForAll/onelistforallshort.txt | anew-rs $WORDLIST/x_massive.txt | wc -l)${NC}\n" 
#----------------------------------------------------------------------------#
## --> rix4uni/WordList
echo -e "➼ ${YELLOW}Fetching & Updating${NC} ${DGREEN}<-- ${BLUE}rix4uni/WordList${NC}" 
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(grep -E '^\.' $WORDLIST/WordList/onelistforall.txt | anew-rs $WORDLIST/x_lhf_mini.txt | wc -l) , $(grep -E '^\.' $WORDLIST/WordList/onelistforshort.txt | anew-rs $WORDLIST/x_lhf_mini.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_lhf_mid.txt${NC}  : ${GREEN}$(cat $WORDLIST/WordList/admin-panel-paths.txt | anew-rs $WORDLIST/x_lhf_mid.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_lhf_large.txt${NC}  : ${GREEN}$(cat $WORDLIST/WordList/onelistforshort.txt | sed 's#^/##' | anew-rs $WORDLIST/x_lhf_large.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_massive.txt${NC}  : ${GREEN}$(sed '/[0-9]/d' $WORDLIST/WordList/onelistforall.txt | sed '/^[[:space:]]*$/d' | sed 's#^/##' |  grep -Ei 'api|build|conf|dev|env|git|graph|helm|json|kube|k8|sql|swagger|xml|yaml|yml|wadl|wsdl' | anew-rs $WORDLIST/x_massive.txt | wc -l)${NC}\n" 
#----------------------------------------------------------------------------#
#Anew & CleanUP
echo -e "➼ ${YELLOW}New Additions${NC} "
x_lhf_mini_lines=$(wc -l < "$WORDLIST/x_lhf_mini.txt")
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(( $x_lhf_mini_lines - $lhf_mini_lines ))${NC}" 
echo -e "➼ ${BLUE}x_lhf_mid.txt${NC}   : ${GREEN}$(cat $WORDLIST/x_lhf_mini.txt | anew-rs $WORDLIST/x_lhf_mid.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_lhf_large.txt${NC} : ${GREEN}$(cat $WORDLIST/x_lhf_mid.txt | anew-rs $WORDLIST/x_lhf_large.txt | wc -l)${NC}" 
echo -e "➼ ${BLUE}x_massive.txt${NC}   : ${GREEN}$(cat $WORDLIST/x_lhf_large.txt | anew-rs $WORDLIST/x_massive.txt | wc -l)${NC}\n" 
#Sort -u -o everything 
find $WORDLIST -maxdepth 1 -type f -name "*.txt" -not -name ".*" -exec sort -u {} -o {} \;  
#----------------------------------------------------------------------------#
#x_api.txt
echo -e "➼ ${YELLOW}Generating ${BLUE}x_api.txt${NC} " 
#Prefetch base for x_mini.txt
tmp_wordium_api=$(mktemp)
#Base
wget --quiet "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/Deps/g_api.txt" -O $tmp_wordium_api
cat $tmp_wordium_api | anew-rs -q $WORDLIST/x_api_tiny.txt
#Trim space, remove /
cat $WORDLIST/x_massive.txt | sed '/^[[:space:]]*$/d' | sed 's#^/##' |  grep -Ei 'api|api2|api3|graph|json|rest|soap|swagger|v1|v2|v3|v4|xml|wadl|wsdl' | anew-rs -q $tmp_wordium_api
sort -u $tmp_wordium_api -o $tmp_wordium_api
echo -e "➼ ${YELLOW}Newly added${NC}: ${GREEN}$(cat $tmp_wordium_api | anew-rs $WORDLIST/x_api.txt | wc -l)${NC}\n"
#----------------------------------------------------------------------------#
#x_dns.txt
echo -e "➼ ${YELLOW}Generating ${BLUE}x_dns.txt${NC} " 
tmp_wordium_dns="$(mktemp)"
tmp_wordium_nokovo="$(mktemp)"
tmp_wordium_trickest="$(mktemp)"
#Base
wget --quiet "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/Deps/dns_sub_permutate.txt" -O "$tmp_wordium_dns"
cat "$tmp_wordium_dns" | anew-rs -q "$WORDLIST/x_dns_tiny.txt"
#n0kovo_subdomains tiny
wget --quiet "https://raw.githubusercontent.com/n0kovo/n0kovo_subdomains/main/n0kovo_subdomains_small.txt" -O "$tmp_wordium_nokovo"
#Separate by dots & dashes
cat "$tmp_wordium_nokovo" | tr -s '\n' | sed -E 's/[[:alpha:]]*[[:digit:]][[:alpha:]]*//g; /^[[:space:]]*$/d' | sort -u | anew-rs -q "$tmp_wordium_dns"
#Trickest
wget --quiet "https://raw.githubusercontent.com/trickest/wordlists/main/inventory/subdomains.txt" -O "$tmp_wordium_trickest"
#Separate by dots & dashes
cat "$tmp_wordium_trickest" | tr -s '\n' | sed -E 's/[[:alpha:]]*[[:digit:]][[:alpha:]]*//g; /^[[:space:]]*$/d' | sort -u | anew-rs -q "$tmp_wordium_dns"
#Add from tiny
cat "$WORDLIST/x_dns_tiny.txt" | anew-rs -q "$tmp_wordium_dns"
sort -u "$tmp_wordium_dns" -o "$tmp_wordium_dns"
echo -e "➼ ${YELLOW}Newly added${NC}: ${GREEN}$(cat $tmp_wordium_dns | anew-rs $WORDLIST/x_dns.txt | wc -l)${NC}\n"
#----------------------------------------------------------------------------#
#x_mini.txt
echo -e "➼ ${YELLOW}Generating ${BLUE}x_mini.txt${NC} " 
#Prefetch base for x_mini.txt
tmp_wordium_mini=$(mktemp)
wget --quiet "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wordium/Deps/fuzz_mini.txt" -O $tmp_wordium_mini
cat $WORDLIST/fuzz.txt/fuzz.txt $WORDLIST/leaky-paths/leaky-paths.txt | sed 's#^/##' | anew-rs -q $tmp_wordium_mini
grep -E '^\.' $WORDLIST/x_lhf_large.txt | anew-rs -q $tmp_wordium_mini
sort -u $tmp_wordium_mini -o $tmp_wordium_mini
echo -e "➼ ${YELLOW}Newly added${NC}: ${GREEN}$(cat $tmp_wordium_mini | anew-rs $WORDLIST/x_mini.txt | wc -l)${NC}\n"
#----------------------------------------------------------------------------#
#WordCount After each run:
echo -e "➼${YELLOW}Updated Wordlists${NC}:" 
echo -e "➼ ${BLUE}x_api.txt${NC}       : ${GREEN}$(wc -l $WORDLIST/x_api.txt)${NC}" 
echo -e "➼ ${BLUE}x_api_tiny.txt${NC}  : ${GREEN}$(wc -l $WORDLIST/x_api_tiny.txt)${NC}"
echo -e "➼ ${BLUE}x_dns.txt${NC}       : ${GREEN}$(wc -l $WORDLIST/x_dns.txt)${NC}"
echo -e "➼ ${BLUE}x_dns_tiny.txt${NC}  : ${GREEN}$(wc -l $WORDLIST/x_dns_tiny.txt)${NC}"
echo -e "➼ ${BLUE}x_mini.txt${NC}      : ${GREEN}$(wc -l $WORDLIST/x_mini.txt)${NC}" 
echo -e "➼ ${BLUE}x_lhf_mini.txt${NC}  : ${GREEN}$(wc -l $WORDLIST/x_lhf_mini.txt)${NC}" 
echo -e "➼ ${BLUE}x_lhf_mid.txt${NC}   : ${GREEN}$(wc -l $WORDLIST/x_lhf_mid.txt)${NC}" 
echo -e "➼ ${BLUE}x_lhf_large.txt${NC} : ${GREEN}$(wc -l $WORDLIST/x_lhf_large.txt)${NC}"
echo -e "➼ ${BLUE}x_massive.txt${NC}   : ${GREEN}$(wc -l $WORDLIST/x_massive.txt)${NC}\n" 
#----------------------------------------------------------------------------#
#Sort -u -o everything , again
find $WORDLIST -maxdepth 1 -type f -name "*.txt" -not -name ".*" -exec sort -u {} -o {} \;
#EOF
#----------------------------------------------------------------------------#
