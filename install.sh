#!/usr/bin/env bash

# Set .dotfiles directory
DOTFILES_DIR="$HOME/.dotfiles"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Symlinks
config_files=(
    .gitconfig
    .gitignore_global
    .zshrc
    )

for config_file in "${config_files[@]}"; do
  full_path="$HOME/$config_file"
  if [ ! -L "$full_path" ]; then
    echo "Symlink '$full_path' does not exist, creating it from .dotfiles"
    ln -s "$DOTFILES_DIR/configs/$config_file" "$full_path"
  else
    echo "Symlink '$full_path' already exists."
  fi
done







check_homebrew_update() {

  # Get local Homebrew repository info
  local_repo_info=$(brew --repo)

  # Get the timestamp of the local Homebrew repository
  local_timestamp=$(git -C "$local_repo_info" log -1 --format="%ct")

  # Get the timestamp of the remote Homebrew repository
  remote_timestamp=$(git -C "$local_repo_info" ls-remote --tags origin | tail -n1 | cut -f 4 | cut -d '/' -f 3 | cut -d '^' -f 1 | cut -d '_' -f 2)

  if [ "$remote_timestamp" -gt "$local_timestamp" ]; then
   return 1
  else
    return 0
  fi
}



# # Package managers & packages

# Check if brew is available
if command -v brew > /dev/null; then
  echo "Homebrew is installed, checking for updates..."
   if check_homebrew_update
    then
        brew update
    else
        echo "Homebrew is up-to-date."
    fi  
else
  echo "Homebrew is not installed."
  echo "Installing Homebrew..."

  # Install Homebrew (this command is from the official Homebrew website: https://brew.sh/)
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/node.sh"
. "$DOTFILES_DIR/install/font.sh"


if [[ $OSTYPE == 'darwin'* ]]; then
    echo 'macOS detected, installing cask apps'
    . "$DOTFILES_DIR/install/brew-cask.sh"
fi

