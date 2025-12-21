import subprocess
import os
from openai import OpenAI

client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

# 1. Get staged diff
diff = subprocess.run(["git", "diff", "--cached"], capture_output=True, text=True).stdout

if not diff.strip():
    print("No staged changes found.")
    exit(0)

# 2. Generate AI commit message
response = client.chat.completions.create(
    model="gpt-4o-mini",
    messages=[
        {"role": "system", "content": "You are an expert software developer who writes concise Git commit messages."},
        {"role": "user", "content": f"Generate a professional git commit message for these changes:\n{diff}"}
    ],
    max_tokens=50
)

commit_msg = response.choices[0].message.content.strip()

if not commit_msg:
    commit_msg = "Auto commit - minor changes"

# 3. Commit & push
subprocess.run(["git", "commit", "-m", commit_msg])
subprocess.run(["git", "push", "origin", "main"])

print("Committed with AI message:", commit_msg)
