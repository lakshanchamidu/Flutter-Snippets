#!/bin/bash

cd "$(dirname "$0")"

git add .

if git diff --cached --quiet; then
  echo "No changes to commit"
  exit 0
fi

DATE=$(date +"%Y-%m-%d %H:%M:%S")

git commit -m "Auto commit - Flutter update ($DATE)"
