#!/usr/bin/env bash

echo 'Config loaded from dotfiles'
# Time the stuff.
integer t0=$(date '+%s')

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

export WAKATIME_HOME=$HOME/.wakatime_config


# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# antigen files 
# export NVM_COMPLETION=true  # https://github.com/lukechilds/zsh-nvm#nvm-completion=
# export NVM_LAZY_LOAD=true # https://github.com/lukechilds/zsh-nvm#lazy-loading=
# export NVM_AUTO_USE=true # https://github.com/lukechilds/zsh-nvm#auto-use=



# java installed via homebrew PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zconf="code ~/.dotfiles/"

alias ll="ls -a" # List all files including dotfiles

alias c="code ." #open current dir in vscode
alias ci="code-insiders ." #open current dir in vscode insiders

alias reload="source ~/.zshrc" #reload zshrc

# Fixing macOS zsh Terminal History Settings - https://blog.akatz.org/fixing-macos-zsh-terminal-history-settings/
alias history="history 1"
HISTSIZE=99999  
HISTFILESIZE=99999 
SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY HIST_IGNORE_DUPS

# Set path to bin for git Brew
#export PATH="/usr/local/bin:${PATH}"

# GULP Path #
export PATH=$HOME/.node/bin:$PATH

# for gnupg
export GPG_TTY=$(tty)

# # PNPM
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Place .zcompdump in zsh cache folder as per - https://stackoverflow.com/questions/62931101/i-have-multiple-files-of-zcompdump-why-do-i-have-multiple-files-of-these
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST


# End of zshrc (load time measure - https://stackoverflow.com/questions/4351244/can-i-profile-my-zshrc-zshenv/30791711#30791711)
function {
    local -i t1 startup
    t1=$(date '+%s')
    startup=$(( t1 - t0 ))
    [[ $startup -gt 1 ]] && print "Hmm, poor shell startup time: $startup"
    ##print "startup time: $startup"

}
unset t0


# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
