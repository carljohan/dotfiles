# DevTree - manage multiple dev environments.
if [[ -x "/Users/cj/code/brickanta-workspace/dt" ]]; then
  unalias dt 2>/dev/null
  eval "$(/Users/cj/code/brickanta-workspace/dt shell-init)"
fi

# DevTree — manage multiple dev environments (added by devtree-setup.sh)
alias dt="/Users/cj/code/brickanta-workspace/dt"