#!/bin/sh

# If a command fails then the deploy stops
set -eu

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
HUGO_ENV=production hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date --rfc-3339=seconds)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
