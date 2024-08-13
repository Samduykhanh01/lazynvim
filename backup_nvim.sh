#!/bin/bash

# Create a backup directory
mkdir -p ~/nvim-backup

# Copy the configuration and data
cp -r ~/.config/nvim ~/nvim-backup/config
cp -r ~/.local/share/nvim/ ~/nvim-backup/data
cp ~/backup_nvim.sh ~/nvim-backup/

# Navigate to the backup directory
cd ~/nvim-backup

if [ ! -d ".git" ]; then
  # Initialize, add, commit, branch, add remote address, push
  git init
  git add .
  git commit -m "Update Neovim configuration and data"
  git branch -M main
  git remote add origin git@github.com:Samduykhanh01/lazynvim.git
  git push -u --force origin main
else
  # Add, commit, push
  git add .
  git commit -m "Update Neovim configuration and data"
  git push --force
fi
