#!/bin/bash

declare -A repos
repos[dotfiles]=$HOME/dotfiles
repos[notes]=$HOME/notes
repos[runs]=$HOME/runs
repos[systemrelevanz]=$HOME/systemrelevanz

for repo in "${!repos[@]}"; do
    path=${repos[$repo]}
    status=$(git -C "$path" status --porcelain)
    if [ -n "$status" ]; then
        echo "Repository $repo has uncommitted changes:"
        git -C "$path" status --porcelain | tr '?' ' '
    fi

    status=$(git -C "$path" status --short)

    if [ -n "$status" ]; then
        echo "Repository $repo is not clean:"
        git -C "$path" status --short
    fi  

    remote_status=$(git -C "$path" remote update)
    
    if [ $? -ne 0 ]; then
        echo "Error fetching remote for repository $repo"
    fi
done