# Install Homebrew

#!/bin/bash


# Install packages
# Get the list of installed packages
installed_packages=$(brew list)

packages=(
    git
    grep
    jq
    python
    dnsmasq 
    pyenv
    gh # github CLI
    antidote # https://getantidote.github.io/
)




for package in "${packages[@]}"; do
  if [[ $installed_packages == *"$package"* ]]; then
    echo "Package '$package' is already installed."
  else
    echo "Package '$package' is not installed."
    brew install "${package[@]}"
  fi
done