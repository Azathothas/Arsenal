- #### **Delete all files** from `$DIR` except for `10` random files
```bash
find "$DIR" -type f | shuf -n "$(($(find $DIR -type f | wc -l) - 10))" | xargs rm
```
