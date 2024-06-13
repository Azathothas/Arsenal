- #### **Resetting** `ALL COMMITS` in a **`GITHUB_REPO`**
> Useful for Deleting the Entire History
```bash
#Clone repo with : git clone --depth="1" --filter="blob:none" "https://github.com/$REPO"
#In case of restoring from a commit hash: git checkout $COMMIT_SHA ; git checkout --orphan temp
#git pull to ensure all remote changes are fetched locally
git pull
#Check if we have branches reflecting locally:
git branch -a || git show-branch
#Checkout a temp branch
git checkout --orphan temp
#Make changes (Del things etc)
git add -A
#Commit
git commit -am "Re:Init (Purge)"
#Delete remote (main)
git branch -D "main"
#rename temp to remote (main)
git branch -m "main"
#force push
git push -f origin main
```
---
- #### **Resetting** to `COMMIT_SHA` in a **`GITHUB_REPO`**
> Useful for Reverting back to a Commit in Past
```bash
#Clone repo with : git clone --depth="1" --filter="blob:none" "https://github.com/$REPO"
#This assumes a git history and ability to: git checkout $COMMIT_SHA

#Checkout to Main
git checkout main ; git pull origin main

#Reset to the $COMMIT_SHA
git reset --hard "$COMMIT_SHA"

#Force Push
git push origin main --force
```
---
- #### Undo Last Commit
> Useful when unwanted changes have been committed but not yet Pushed
```bash
git reset --soft HEAD~1
```
---
- #### Restore a Hard Reset Commit
```bash
!# This assumes a local .git copy exists and hasn't been modified/deleted

#Find the shashum using reflogs (Usually the second one)
git reflog

#Reset & Restore
git reset --hard "$SHASHUM"
git count-objects -Hv
```
---
- #### Push a Large Repo
> Useful to bypass Github's 2GB Single Push Limit
```powershell
!# Existing Repo
# 1. Copy new things to a temp location
# 2. Then Reset repo to Origin
 git reset --hard "origin/main"
# 3. Copy things that needs to be pushed
# 4. Get all Files to push
 git ls-files --other | wc -l
# 5. Finally push in batches
while ($true) { git ls-files --other | Select-Object -First 50 | ForEach-Object { git add $_ } ; git commit -m "Batch Push" ; git push -u origin main }
```
