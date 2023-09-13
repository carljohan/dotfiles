# Check if pnpm command is available
if ! command -v pnpm > /dev/null; then
brew install pnpm
fi


# Globally install with pnpm
packages=(
    eslint
    nodemon
    tldr
    vtop
    @antfu/ni
    vercel
    npm-check-updates
)


# Get the list of globally installed packages
installed_packages=$(npm list -g --depth=0)
