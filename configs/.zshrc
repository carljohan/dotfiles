# ZSH plyugins handled by antidote
source $HOME/.dotfiles/configs/zsh-plugins.zsh


# TODO: rename this to more specific name
source $HOME/.dotfiles/configs/all-config.zsh

# Deno config
source $HOME/.dotfiles/configs/deno.zsh

# Python config
source $HOME/.dotfiles/configs/python-config.zsh

# PNPM config
source $HOME/.dotfiles/configs/pnpm.zsh

# Nix config
source $HOME/.dotfiles/configs/nix.zsh

# Spaceship prompt
source $HOME/.dotfiles/configs/spaceship.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cj/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cj/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cj/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cj/google-cloud-sdk/completion.zsh.inc'; fi


# bun completions
[ -s "/Users/cj/.bun/_bun" ] && source "/Users/cj/.bun/_bun"
