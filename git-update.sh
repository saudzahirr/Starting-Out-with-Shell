#!/bin/bash

read -p "Enter main branch name: " main_branch
current_branch=$(git symbolic-ref --short HEAD)
echo "Current branch: $current_branch"

if [[ $main_branch != $current_branch ]]; then
    echo "Switching $current_branch to $main_branch ..."
    git stash apply
    git checkout $main_branch
    git pull
else
    git pull
fi
