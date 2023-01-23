# Install cask packages

apps=(
    firefox
    google-chrome
    iterm2
    visual-studio-code
    vlc
    raycast
    fig
    cron
)

brew install "${apps[@]}" --cask