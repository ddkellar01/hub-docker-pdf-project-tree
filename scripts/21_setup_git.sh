#!/bin/bash
if [ ! -d ".git" ]; then
    git init
    git branch -M main
    echo "Initialized new Git repository."
else
    echo "Git repository already exists."
fi
