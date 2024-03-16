# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
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

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"