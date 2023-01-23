#!/usr/bin/env bash

# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)


DOTFILES_DIR="~/.dotfiles"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master



# # symlinks
# ln -s "$DOTFILES_DIR/.bash_profile" ~
ln -s ~/.dotfiles/git/.gitconfig .gitconfig
ln -s ~/.dotfiles/git/.gitignore_global .gitignore_global
ln -s ~/.dotfiles/config/.zshrc ~/.zshrc



# # Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/node.sh"

if [[ $OSTYPE == 'darwin'* ]]; then
    . "$DOTFILES_DIR/install/brew-cask.sh"
fi

