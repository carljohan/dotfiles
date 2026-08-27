# dotfiles

Shell, Git, and machine bootstrap for my development environments. Public, secret-free, and driven entirely by [mise](https://mise.jdx.dev).

Canonical checkout: `~/code/github.com/carljohan/dotfiles`

## New machine

Copy, paste, done:

```sh
curl -fsSL https://mise.run | sh
git clone https://github.com/carljohan/dotfiles.git ~/code/github.com/carljohan/dotfiles
cd ~/code/github.com/carljohan/dotfiles
~/.local/bin/mise trust
~/.local/bin/mise bootstrap plan
~/.local/bin/mise bootstrap --locked
```

On a fresh Mac, the `git clone` triggers the Xcode Command Line Tools install — accept it, then rerun the commands from `git clone` onward. That's the only manual step.

Check with `mise bootstrap status` and `mise doctor`, then open a fresh shell.

## Existing machine

```sh
git pull --ff-only
mise trust
mise bootstrap plan
mise bootstrap --locked
```

## Bump tool versions

```sh
mise lock --bump
```

Review the lockfile changes, bootstrap both machines, then push.

## How it works

- `mise.toml` holds shared tools and dotfile symlinks. `mise.macos.toml` and `mise.linux.toml` are selected automatically per platform; the macOS profile also declares Homebrew formulae and casks.
- Lockfiles pin exact versions for the two supported targets: `macos-arm64` (laptop) and `linux-x64` (Bifrost).
- `dotfiles/` contains the actual configs: `common/` (gitconfig, starship), `macos/` (zsh), `linux/` (bash).
- The prompt is Starship, initialized from each shell's native startup file.
- Mise shims go on `PATH` before interactive-shell setup, so SSH commands and background tools resolve the same pinned runtimes.
- Apps deliberately managed outside bootstrap are listed in [`docs/macos-app-inventory.md`](docs/macos-app-inventory.md).

## Not in this repo

- Credentials and private keys. The macOS bootstrap installs `gpg` and `pinentry-mac`, but the Git signing key and passphrase are provisioned by hand.
- Agent state and personal Agent Skills/MCP config — those live in the private `carljohan/agent-kit` repository.
- Project-specific setup — that belongs in each project's own repo.
