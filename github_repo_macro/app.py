# Importing libraries for env and shell variable
import sys
import os
from dotenv import load_dotenv
import json
import requests


load_dotenv()

api_token = os.getenv("GITHUB_API_KEY")
os.environ["GITHUB_USERNAME"] = os.getenv("GITHUB_USERNAME")

try:
    repo_name = sys.argv[1]
except:
    print("Please provide repo name")
    sys.exit(1)


url = "https://api.github.com/user/repos"
payload = {
    "name": repo_name,
    "description": ""
}
headers = {
    "Authorization": f"token {api_token}",
    "Accept": "application/vnd.github.v3+json"
}

response = requests.post(url, headers=headers, data=json.dumps(payload))

if response.status_code == 201:
    print(f"Repo {repo_name} created successfully")
else:
    print(f"Error creating repo {repo_name}")
    print(f"Status code: {response.status_code}")
    print(response.json())
