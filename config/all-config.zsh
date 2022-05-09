#!/usr/bin/env bash

#Activate antigen
source /usr/local/share/antigen/antigen.zsh

export WAKATIME_HOME=$HOME/.wakatime_config
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# antigen files 
export NVM_COMPLETION=true  # https://github.com/lukechilds/zsh-nvm#nvm-completion=
export NVM_LAZY_LOAD=true # https://github.com/lukechilds/zsh-nvm#lazy-loading=
export NVM_AUTO_USE=true # https://github.com/lukechilds/zsh-nvm#auto-use=

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle lukechilds/zsh-nvm
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting


#Font used for terminal
#MesloLGS NF

# Antigen theme
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zconf="code ~/.dotfiles/config/"



export GPG_TTY=$(tty)
