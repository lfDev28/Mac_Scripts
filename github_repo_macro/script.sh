#!/bin/bash

# Set the name of the new repository
repo_name=$1


cwd=$(pwd)
echo "Creating a new repository named $repo_name in $cwd"
cd "/Users/Lee/Desktop/Dev/scripts/github_repo_macro"
python3 app.py $repo_name

source .env


cd $cwd

# Initialize a new Git repository in the current directory
git init

# Add all files to the staging area
git add .

# Commit the changes with a default message
git commit -m "Initial commit"

# Add the branch main
git branch -M main

# Run the Python script to make a POST request and pass the repo name as a command-line argument

# Add any new or modified files to the staging area
git add .

# Commit the changes with a custom message
git commit -m "Initial Commit"

# Set the URL of the remote repository
remote_url="https://github.com/$GITHUB_USERNAME/$repo_name.git"

# Add the remote repository to the Git configuration
git remote add origin $remote_url

# Push the changes to the remote repository
git push -u origin main

echo "Succesfully created and pushed current directory to your github"


