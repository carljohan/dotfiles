# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install packages

apps=(
    git
    grep
    jq
    python
    antigen
    volta
    dnsmasq
    pyenv
    gh
)

brew install "${apps[@]}"