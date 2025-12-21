#!/bin/bash

# Make sure OPENAI_API_KEY is set
if [ -z "$OPENAI_API_KEY" ]; then
  echo "Error: OPENAI_API_KEY not set."
  exit 1
fi

while true; do
  cd "$(dirname "$0")"

  # Stage all changes
  git add .

  # Check for staged changes
  if git diff --cached --quiet; then
    echo "$(date): No changes to commit"
  else
    # Get staged diff
    DIFF=$(git diff --cached)

    # Generate AI commit message using OpenAI API
    COMMIT_MSG=$(curl -s https://api.openai.com/v1/chat/completions \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $OPENAI_API_KEY" \
      -d "{
        \"model\": \"gpt-4\",
        \"messages\": [
          {\"role\": \"system\", \"content\": \"You are an expert software developer who writes concise Git commit messages.\"},
          {\"role\": \"user\", \"content\": \"Generate a concise git commit message for these changes:\n$DIFF\"}
        ],
        \"max_tokens\": 50
      }" | jq -r '.choices[0].message.content')

    # Fallback if AI fails
    if [ -z "$COMMIT_MSG" ]; then
      COMMIT_MSG="Auto commit - minor changes"
    fi

    # Commit & push
    git commit -m "$COMMIT_MSG"
    git push origin main

    echo "$(date): Changes committed and pushed with message: $COMMIT_MSG"
  fi

  # Wait 30 minutes
  sleep 1800
done
