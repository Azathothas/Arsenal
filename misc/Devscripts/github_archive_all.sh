#!/usr/bin/env bash

#----------------------------------------------------------------------------#
#Deps: coreutils + curl + jq + moreutils + rclone + wget
#Ref: https://docs.github.com/en/rest/migrations/users?apiVersion=2022-11-28#start-a-user-migration
# Requires a SuperUser GH Token
# export GITHUB_ADMIN_TOKEN="ghp_token_with_appropriate_privs"
# Also Requires rclone.conf at $HOME/.config/rclone/rclone.conf (Change Bucketname to yours, will quietly fail if not configured properly)
# 
#Usage: bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Devscripts/github_archive_all.sh")
#     : curl -qfsSl "https://raw.githubusercontent.com/Azathothas/Arsenal/main/misc/Devscripts/github_archive_all.sh" | bash
# ALT : "https://pub.ajam.dev/repos/Azathothas/Arsenal/misc/Devscripts/github_archive_all.sh"
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#Sanity Check
if [ -z "${GITHUB_ADMIN_TOKEN+x}" ]; then
    echo -e "[+]\nError: GITHUB_ADMIN_TOKEN is not exported or is empty. Exiting...\n"
    exit 1
fi
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
#Temp Dir for files
TMP_GITDIR="$(mktemp -d)" && export TMP_GITDIR="$TMP_GITDIR"
echo -e "\n[+] Using $TMP_GITDIR as Temp Dir\n"
#Get Repos (json compatible)
GIT_REPOS="$(curl -qfsSL "https://api.github.com/user/repos?per_page=100&type=all" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" | jq -r '.[].full_name' | grep -i "^Azathothas" | sort -u | sed 's/.*/"&"/' | tr '\n' ',' | sed 's/,$//')" && export GIT_REPOS="$GIT_REPOS"
#Initiate Migration
curl -qfsSL "https://api.github.com/user/migrations" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" -X "POST" --data "{\"repositories\": [$GIT_REPOS],\"lock_repositories\":false}" > "$TMP_GITDIR/migration.json"
#Get metadata
MIGRATION_ID="$(jq -r '.id' $TMP_GITDIR/migration.json)" && export MIGRATION_ID="$MIGRATION_ID" ; echo -e "\n[+] Migration ID : $MIGRATION_ID"
MIGRATION_STATE="$(jq -r '.state' $TMP_GITDIR/migration.json)" && export MIGRATION_STATE="$MIGRATION_STATE" ; echo -e "[+] Migration Status : $MIGRATION_STATE"
MIGRATION_URL="$(jq -r '.url' $TMP_GITDIR/migration.json)" && export MIGRATION_URL="$MIGRATION_URL" ; echo -e "[+] Migration URL : $MIGRATION_URL"
MIGRATION_DATE="$(jq -r '.created_at' $TMP_GITDIR/migration.json)" && export MIGRATION_DATE="$MIGRATION_DATE" ; echo -e "[+] Migration Started : $MIGRATION_DATE\n"
#Cleanup
#List all migration ids
curl -qfsSL "https://api.github.com/user/migrations?per_page=100" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" | jq -r '.[].id' > "$TMP_GITDIR/all_migrations.txt"
#Pending Migrations
curl -qfsSL "https://api.github.com/user/migrations?per_page=100" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" | jq '.[] | select(.state == "pending")' | jq -r '.id' > "$TMP_GITDIR/pending_migrations.txt"
#exporting Migrations
curl -qfsSL "https://api.github.com/user/migrations?per_page=100" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" | jq '.[] | select(.state == "exporting")' | jq -r '.id' > "$TMP_GITDIR/exporting_migrations.txt"
#Completed Migrations
curl -qfsSL "https://api.github.com/user/migrations?per_page=100" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" | jq '.[] | select(.state == "exported")' | jq -r '.id' > "$TMP_GITDIR/exported_migrations.txt"
 #Remove Current Migration
  sed -i "/$MIGRATION_ID/d" "$TMP_GITDIR/exported_migrations.txt"
  sed -i '/^[[:space:]]*$/d' "$TMP_GITDIR/exported_migrations.txt"
 #Downloadable migration archives are automatically deleted after seven days 
 #Delete Completed Migration
   while IFS= read -r line || [ -n "$line" ]; do
       if [ -n "$line" ]; then
           echo -e "\n[+] Deleting Completed Migration Job $line\n"
           #Check Status
           curl -qfsSL "https://api.github.com/user/migrations/${line}" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" 2>/dev/null | jq -r '.created_at' 2>/dev/null
           #Del 
           echo "(404 --> No Archive URL)"
           curl -qfsSL "https://api.github.com/user/migrations/${line}/archive" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" -X "DELETE" >/dev/null
           #Check Status again
           curl -qfsSL "https://api.github.com/user/migrations/${line}" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" 2>/dev/null | jq -r '.updated_at' 2>/dev/null
       fi
   done < "$TMP_GITDIR/exported_migrations.txt"
#Failed Migrations
curl -qfsSL "https://api.github.com/user/migrations?per_page=100" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" | jq '.[] | select(.state == "failed")' | jq -r '.id' > "$TMP_GITDIR/failed_migrations.txt"
#----------------------------------------------------------------------------#

#----------------------------------------------------------------------------#
##Sleep
echo -e "\n[+] Sleeping for 10 Mins\n" && sleep 600
##Download func
archive_dl()
{
    #Download archive
       echo -e "[+]\n Archive URL Found...(Downloading)\n"
       #Get URL
       MIGRATION_ARCHIVE="$(curl -qfsSL "https://api.github.com/user/migrations/$MIGRATION_ID" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" | jq -r '.archive_url')" && export MIGRATION_ARCHIVE="$MIGRATION_ARCHIVE" ; echo -e "\n[+] Archive URL: $MIGRATION_ARCHIVE"
       #Get signed URL (DO NOT FOLLOW REDIRECTS -L)
       MIGRATION_ARCHIVE_DL="$(curl -qfsS "$MIGRATION_ARCHIVE" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" 2>/dev/null | sed '/^[[:space:]]*$/d')" && export MIGRATION_ARCHIVE_DL="$MIGRATION_ARCHIVE_DL" ; echo -e "\n[+] Download URL: $MIGRATION_ARCHIVE_DL\n"
       #Download Archive
       rm -rf "$TMP_GITDIR/Archive.tar.gz" 2>/dev/null
       wget --quiet --show-progress --progress="dot:giga" --tries="10" "$MIGRATION_ARCHIVE_DL" -O "$TMP_GITDIR/Archive.tar.gz"
       #Metdata
       echo -e "\n" ; file "$TMP_GITDIR/Archive.tar.gz" ; echo -e "\n" ; du -sh "$TMP_GITDIR/Archive.tar.gz" ; echo -e "\n"
    #rClone Upload
       rclone copyto "$TMP_GITDIR/Archive.tar.gz" "r2:/private/repos/Azathothas/Archive.tar.gz" --progress --check-first 2>/dev/null
}
export -f archive_dl
#Refresh Migration State
MIGRATION_STATE="$(jq -r '.state' $TMP_GITDIR/migration.json)" && export MIGRATION_STATE="$MIGRATION_STATE" ; echo -e "[+] Migration Status : $MIGRATION_STATE"
##Main
#Pending or Exporting
if [ "$MIGRATION_STATE" = "pending" ] || [ "$MIGRATION_STATE" = "exporting" ]; then
  #Loop until archive
     while [ -z "$(curl -qfsSL "https://api.github.com/user/migrations/$MIGRATION_ID" -H "Authorization: Bearer $GITHUB_ADMIN_TOKEN" 2>/dev/null | jq -r '.archive_url' | sed '/null/d')" ]; do
       echo -e "\n[+] Migration is still exporting...(waiting 300 Seconds)\n" && sleep 300
   done
     #Download
     archive_dl
#If already exported
elif [ "$MIGRATION_STATE" = "exported" ]; then
   echo -e "[+]\n Migration already exported...(Fetching Archive)\n"
     #Download
     archive_dl
#If failed
elif [ "$MIGRATION_STATE" = "failed" ]; then   
   echo -e "[+]\n Migration Failed...(URL : $MIGRATION_URL)\n"
   exit 1
#If Unknown
else
   echo -e "[+]\n Unknown Migration State: $MIGRATION_STATE\n"
   exit 1
fi
#EOF
#----------------------------------------------------------------------------#
