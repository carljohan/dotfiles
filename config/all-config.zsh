#!/usr/bin/env bash

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"


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
# antigen bundle zsh-users/zsh-syntax-highlighting //might be conflicting with fig.io(?)


#Font used for terminal
#MesloLGS NF

# Antigen theme
antigen theme spaceship-prompt/spaceship-prompt
# antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zconf="code ~/.dotfiles/config/"
#open current dir in vscode
alias c="code ."

# Fixing macOS zsh Terminal History Settings - https://blog.akatz.org/fixing-macos-zsh-terminal-history-settings/
alias history="history 1"
HISTSIZE=99999  
HISTFILESIZE=99999 
SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY HIST_IGNORE_DUPS

# for Brew
export PATH="/usr/local/sbin:$PATH"

# for gnupg
export GPG_TTY=$(tty)


# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"