# docs https://getantidote.github.io/migrating-from-antigen

# load antidote plugin manager
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh


# Initialize antidote's dynamic mode, which changes `antidote bundle`
# from static mode.
# TODO: config Antidote static mode
source <(antidote init)


antidote bundle spaceship-prompt/spaceship-prompt


