# Make sure nix works after macOS update - https://gist.github.com/meeech/0b97a86f235d10bc4e2a1116eec38e7e
# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix
# Created by `pipx` on 2024-08-28 15:25:13
export PATH="$PATH:/Users/cj/.local/bin"
