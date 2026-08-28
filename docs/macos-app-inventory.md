# macOS application ownership

`mise.macos.toml` is the source of truth for applications installed through
Homebrew or the Mac App Store CLI. The applications below are intentional
exceptions that must be installed or updated through their own distribution
channel.

## App Store managed outside bootstrap

- 1Password for Safari
- Keynote
- Microsoft Excel
- Numbers
- Pages

Things is also distributed through the App Store, but is declared in
`mise.macos.toml` by its App Store ID. Hidden Bar is currently an App Store
installation and is declared as a Homebrew cask for future bootstrap.

## Vendor managed

- Arc
- calibre
- Circleback
- Copilot Money
- GeForce NOW
- Grok Bot
- Microsoft Teams
- Obsidian
- PostHog Desktop
- T3 Code Nightly
- WebTorrent
- Writer

These exceptions are inventory only. The repository does not own their user
data, credentials, updater state, or application configuration.
