#!/bin/bash
# Simple deployment script

# Check if git is installed
if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

# Initialize git repository if not already initialized
if [ ! -d .git ]; then
  git init
  git add .
  git commit -m "Initial commit"
else
  git add .
  git commit -m "Update website"
fi

# Instructions for GitHub and Vercel deployment
echo "============================================"
echo "Project is ready for GitHub deployment:"
echo "1. Create a new repository on GitHub"
echo "2. Run the following commands:"
echo "   git remote add origin [YOUR_GITHUB_REPO_URL]"
echo "   git push -u origin main"
echo ""
echo "For Vercel deployment:"
echo "1. Install Vercel CLI: npm install -g vercel"
echo "2. Run: vercel login"
echo "3. Run: vercel"
echo "============================================"
