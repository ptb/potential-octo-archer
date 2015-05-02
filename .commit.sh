#!/bin/sh
/usr/bin/find '.' -type d -name '.git' -print0 | /usr/bin/sort -rz | while IFS= read -r -d '' gitdir1; do
  DIR1="$(cd "$(/usr/bin/dirname "$gitdir1")" && pwd -P)"
  /usr/bin/find "$DIR1" -type d -name '.git' -print0 | /usr/bin/sort -rz | while IFS= read -r -d '' gitdir2; do
    DIR2="$(cd "$(/usr/bin/dirname "$gitdir2")" && pwd -P)"
    /usr/bin/find "$DIR2" -type d -empty -exec /usr/bin/touch {}/.keep \;
    /usr/local/bin/git --git-dir="$DIR1/.git" --work-tree="$DIR1/" add --all "$DIR2/"
  done
  /usr/bin/find "$DIR1" -type d -empty -exec /usr/bin/touch {}/.keep \;
  /usr/local/bin/git --git-dir="$DIR1/.git" --work-tree="$DIR1/" add --all "$DIR1/"
  /usr/local/bin/git --git-dir="$DIR1/.git" --work-tree="$DIR1" commit --message='' --allow-empty-message
done
