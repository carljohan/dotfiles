# ZSH plyugins handled by antidote
ZSH_PLUGINS=$HOME/.dotfiles/configs/zsh-plugins.zsh
source $ZSH_PLUGINS


# TODO: rename this to more specific name
ZSH_CUSTOM=$HOME/.dotfiles/configs/all-config.zsh
source $ZSH_CUSTOM

# Deno config
source $HOME/.dotfiles/configs/deno.zsh

# Python config
PYTHON_CONFIG=$HOME/.dotfiles/configs/python-config.zsh
source $PYTHON_CONFIG

# https://github.com/sindresorhus/quick-look-plugins install these?


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cj/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cj/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cj/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cj/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
