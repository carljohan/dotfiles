# dotfiles

## Install

1. clone this git repo into root dir
2. run

```
source .dotfiles/install.sh
```

## use Apple Keychain to store GPG Passphrases

```
brew install gpg gpg2
```

```
pinentry-mac
mkdir -m 0700 ~/.gnupg
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" | tee ~/.gnupg/gpg-agent.conf
pkill -TERM gpg-agent
```

Close and reopen shell.
