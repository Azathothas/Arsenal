#!/bin/env bash

# Initialize arrays to hold patterns and antipatterns
patterns=()
antipatterns=()

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -s|--scope)
            scope_file="$2"
            shift # Past argument
            shift # Past value
            ;;
        -h|--help)
            echo "Usage: $0 [-s|--scope SCOPE_FILE]"
            echo "Filters a list of domains to those that match patterns in a scope file."
            echo ""
            echo "Options:"
            echo "-s, --scope SCOPE_FILE Path to the scope file to use. If not provided,"
            echo " the script will look for a .scope file in the"
            echo " current directory and parent directories."
            echo "-h, --help Show this help message."
            exit 0
            ;;
        *) # Unknown option
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Read patterns and antipatterns from scope file
if [[ -n "$scope_file" ]]; then
    readarray -t lines < "$scope_file"
else
    # Look for .scope file in current directory and parent directories
    checker="notfound"
    while [[ "$checker" == "notfound" ]]; do
        if [[ -f ".scope" ]]; then
            checker="found"
            readarray -t lines < ".scope"
        else
            cd .. || exit 1
            if [[ $(pwd) == '/' ]]; then
                echo "Could not find .scope file"
                exit 1
            fi
        fi
    done
fi

# Process the read lines
for line in "${lines[@]}"; do
    line=$(echo "$line" | tr -d '\r\n') # Remove any line endings
    if [[ -z "$line" ]]; then
        continue # Skip empty lines
    fi
    if [[ ${line:0:1} == '!' ]]; then
        antipatterns+=("${line:1}")
    else
        patterns+=("$line")
    fi
done

# Check if domain is in scope
function in_scope {
    domain="$1"
    if [[ $domain == http* ]]; then
        domain=$(echo "$domain" | awk -F/ '{print $3}') # Extract domain from URL
    fi
    for p in "${patterns[@]}"; do
        if [[ $domain =~ $p ]]; then
            for a in "${antipatterns[@]}"; do
                if [[ $domain =~ $a ]]; then
                    return 1
                fi
            done
            return 0
        fi
    done
    return 1
}

# Read input from stdin and print domains that are in scope
while IFS= read -r line; do
    line=$(echo "$line" | tr -d '\r\n') # Remove any line endings
    if in_scope "$line"; then
        echo "$line"
    fi
done < /dev/stdin
