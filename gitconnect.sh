#!/bin/bash

# Replace these variables with your own values
local_repo_path="/path/to/local/repo"
github_repo_url="https://github.com/your-username/your-repo.git"

# Change directory to your local repository
cd "$local_repo_path"

# Initialize Git if not already initialized
if [ ! -d ".git" ]; then
  git init
fi

# Add the GitHub repository as a remote
git remote add origin "$github_repo_url"

# Verify the remote repository URL
git remote -v

# Please check you have the code saved where you want it to pull or push to or you will save over your progress dont fuck it up.

# 1.) Pull any existing changes from the GitHub repository
git pull origin main

# 2. Push your local repository to the GitHub repository
git push -u origin main
