import os
import subprocess
import time
from openai import OpenAI

# Initialize OpenAI client
api_key = os.environ.get("OPENAI_API_KEY")
if not api_key:
    raise ValueError("OPENAI_API_KEY not set in environment")

client = OpenAI(api_key=api_key)

# Time interval between checks (in seconds)
INTERVAL = 1800  # 30 minutes

while True:
    # Go to script folder
    os.chdir(os.path.dirname(os.path.abspath(__file__)))

    # Stage all changes
    subprocess.run(["git", "add", "."])

    # Check for staged changes
    diff = subprocess.run(
        ["git", "diff", "--cached"], capture_output=True, text=True
    ).stdout

    if diff.strip():
        # Generate AI commit message
        try:
            response = client.chat.completions.create(
                model="gpt-4o-mini",
                messages=[
                    {
                        "role": "system",
                        "content": "You are an expert software developer who writes concise Git commit messages."
                    },
                    {
                        "role": "user",
                        "content": f"Generate a professional git commit message for these changes:\n{diff}"
                    }
                ],
                max_tokens=50
            )
            commit_msg = response.choices[0].message.content.strip()
        except Exception as e:
            print("Error generating AI commit message:", e)
            commit_msg = "Auto commit - minor changes"

        if not commit_msg:
            commit_msg = "Auto commit - minor changes"

        # Commit & push
        subprocess.run(["git", "commit", "-m", commit_msg])
        subprocess.run(["git", "push", "origin", "main"])
        print(f"{time.strftime('%Y-%m-%d %H:%M:%S')}: Committed and pushed with message: {commit_msg}")
    else:
        print(f"{time.strftime('%Y-%m-%d %H:%M:%S')}: No changes to commit")

    # Wait for next interval
    time.sleep(INTERVAL)
