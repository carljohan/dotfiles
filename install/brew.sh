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
    antigen
    dnsmasq
    pyenv
    gh
)




for package in "${packages[@]}"; do
  if [[ $installed_packages == *"$package"* ]]; then
    echo "Package '$package' is already installed."
  else
    echo "Package '$package' is not installed."
    brew install "${package[@]}"
  fi
done