#!/usr/bin/bash
cd "$(dirname "$0")"
git checkout --orphan latest_branch
git add -A
git commit -am "Current Files"
git branch -D Master
git branch -m Master
git push -f origin Master
