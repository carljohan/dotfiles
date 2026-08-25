# dotfiles

Public, secret-free shell, Git, and machine bootstrap declarations for Carl Johan's development environments.

## Canonical checkout

```text
~/code/github.com/carljohan/dotfiles
```

Mise is the single bootstrap entrypoint. `mise.toml` contains common declarations, while `mise.macos.toml` and `mise.linux.toml` are selected automatically by the current platform.

## Bootstrap

Install mise using its official installer, clone this repository to the canonical path, and inspect the plan before applying it:

```sh
curl -fsSL https://mise.run | sh
cd ~/code/github.com/carljohan/dotfiles
~/.local/bin/mise trust
~/.local/bin/mise bootstrap plan
~/.local/bin/mise bootstrap --dry-run
~/.local/bin/mise bootstrap
```

Run `mise doctor` and open a fresh shell after applying changes.

## Ownership boundaries

This repository contains only generic, non-secret machine configuration. It does not own:

- credentials or private keys;
- live Codex, Claude Code, Cursor, T3 Code, or PostHog Desktop state;
- personal cross-harness Agent Skills and MCP declarations;
- project-specific instructions or runtime configuration.

Personal agent configuration belongs in the private `carljohan/agent-kit` repository. Project setup belongs in each project repository.

## GPG signing on macOS

Git signing expects `gpg` and `pinentry-mac`, which the macOS bootstrap declares. The signing key itself and its passphrase are provisioned outside Git.
