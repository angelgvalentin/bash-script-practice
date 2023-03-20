#!/bin/bash

# Checkout Source release Branch

# Name of the branch to level up from
echo "What branch are you leveling up from?"
read SOURCE_BRANCH
git checkout $SOURCE_BRANCH
git pull


# Name of the target branch we are leveling up
echo "What branch are you leveling up?"
read TARGET_BRANCH

checkout $TARGET_BRANCH
git pull

git checkout -b TARGET_BRANCH_AUXILIARY_TO_RECEIVE_MERGE_FROM_SOURCE_BRANCH

git merge $SOURCE_BRANCH

# Add and commit the changes
git add .
git commit -m "Leveled up the repository from ${SOURCE_BRANCH}"

