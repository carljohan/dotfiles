
brew install volta

volta install node
volta install npm
# TODO: check if it works without starting of a new shell
# . ~/.bash_profile

# Globally install with npm

packages=(
    eslint
    nodemon
    ohmy
    tldr
    vtop
    pnpm
    @antfu/ni
    vercel
    npm-check-updates
)

npm install -g "${packages[@]}"