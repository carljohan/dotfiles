# Install cask packages

apps=(
    firefox
    google-chrome
    iterm2
    visual-studio-code
    vlc
    raycast
    cron
)

brew install "${apps[@]}" --cask