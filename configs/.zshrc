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
if [ -f '/Users/cj/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cj/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cj/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cj/google-cloud-sdk/completion.zsh.inc'; fi

# Make sure nix works after macOS update - https://gist.github.com/meeech/0b97a86f235d10bc4e2a1116eec38e7e
# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix