#!/bin/bash

# Name of the branch to level up from
echo "What branch are you leveling up from?"
read LEVEL_UP_BRANCH

## Navigate to the git repository
#cd /path/to/your/repository

# Ensure the repository is up-to-date
git fetch origin
git pull origin $LEVEL_UP_BRANCH

# Check out a new branch to level up the repository
git checkout -b r3-to-level-up-from

# Check out branch to level up into
git checkout release4.0

# Check out a new branch to level up into
git checkout -b r4-to-merge-r3-into

# Merge R3 into R4
# git merge r3-to-level-up-from

# Add and commit the changes
git add .
git commit -m "Leveled up the repository from R3"

# Push the changes to the remote branch
git push origin r4-to-merge-r3-into:release4.0

# Create a pull request to merge the changes into the main branch
# ...