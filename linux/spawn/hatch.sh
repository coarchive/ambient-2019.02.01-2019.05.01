# shellcheck shell=bash

function hatch {
  if [ -z "$1" ]; then
    err "Must specify an egg to hatch"
    return 1
  fi
  if ! [[ "$1" =~ ^[a-zA-Z_]+$ ]]; then
    err "Invalid egg name"
    return 1
  fi
  local file="$dotfiles/eggs/$1.sh"
  if [ -r "$file" ]; then
    source "$file"
  else
    err "Couldn't find that egg"
    return 1
  fi
}
export -f hatch
