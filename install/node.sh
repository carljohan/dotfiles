



# Get the list of installed tools with Volta


# Check if pnpm command is available
if ! command -v pnpm > /dev/null; then
brew install pnpm
fi



/.bash_profile

# Globally install with pnpm
packages=(
    eslint
    nodemon
    tldr
    vtop
    pnpm
    @antfu/ni
    vercel
    npm-check-updates
)


#!/bin/bash

# Get the list of globally installed packages
installed_packages=$(pnpm list -g --depth=0)
