# dotfiles

Public, secret-free shell, Git, and machine bootstrap declarations for Carl Johan's development environments.

## Canonical checkout

```text
~/code/github.com/carljohan/dotfiles
```

Mise is the single bootstrap entrypoint. `mise.toml` contains common declarations, while `mise.macos.toml` and `mise.linux.toml` are selected automatically by the current platform.

The committed `.miserc.toml` enables platform selection during the first bootstrap. Shell startup exports the same early mise setting before the global platform config is discovered.

## Bootstrap

Install mise using its official installer, clone this repository to the canonical path, and inspect the plan before applying it:

```sh
curl -fsSL https://mise.run | sh
cd ~/code/github.com/carljohan/dotfiles
~/.local/bin/mise trust
~/.local/bin/mise bootstrap plan
~/.local/bin/mise bootstrap --dry-run
~/.local/bin/mise bootstrap --locked
```

Run `mise bootstrap status` and `mise doctor`, then open a fresh shell.

## Update an existing machine

```sh
git pull --ff-only
mise trust
mise bootstrap plan
mise bootstrap --locked
```

Tool versions are deliberately pinned and locked for the supported `macos-arm64` laptop and `linux-x64` Bifrost targets. When changing one, update the relevant `mise*.toml`, run `mise lock --global`, review the matching committed lockfile, and bootstrap both machines before pushing.

## Ownership boundaries

This repository contains only generic, non-secret machine configuration. It does not own:

- credentials or private keys;
- live Codex, Claude Code, Cursor, T3 Code, or PostHog Desktop state;
- personal cross-harness Agent Skills and MCP declarations;
- project-specific instructions or runtime configuration.

Personal agent configuration belongs in the private `carljohan/agent-kit` repository. Project setup belongs in each project repository.

## GPG signing on macOS

Git signing expects `gpg` and `pinentry-mac`, which the macOS bootstrap declares. The signing key itself and its passphrase are provisioned outside Git.
