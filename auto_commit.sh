#!/bin/bash

while true; do
  cd "$(dirname "$0")"

  git add .

  if git diff --cached --quiet; then
    echo "$(date): No changes to commit"
  else
    DATE=$(date +"%Y-%m-%d %H:%M:%S")
    git commit -m "Auto commit - Flutter update ($DATE)"
    git push origin main
    echo "$(date): Changes committed and pushed"
  fi

  sleep 1800  # 300 seconds = 5 minutes
done
