#!/bin/bash

# some more ls aliases
# alias ls="exa"
alias lsa="exa -a"
alias lsd="exa -la --tree"

# I seem to have trouble typing "yoruvue-dl"
alias ytdl="youtube-dl"
alias scdl="youtube-dl --embed-thumbnail"

# node
# Wait until VSCode works better with WSL for pnpm support with ESLint
#alias npm="pnpm"

# windows
alias clip="clip.exe"
alias cmd="cmd.exe"
alias wexe="wexecute.exe"
alias lxend="wexe lxend"

# root
alias apt="sudo apt"
alias sul="su -l"

# moving around
alias ..="cd .."
alias bc="cd -"
function r {
  tempfile="$(mktemp -t tmp.XXXXXX)"
  ranger --choosedir="$tempfile" "${@:-$PWD}"
  test -f "$tempfile" &&
  if [ "$(cat -- "$tempfile")" != "$PWD" ]; then
    cd -- "$(cat "$tempfile")"
  fi
  rm -f -- "$tempfile"
}
function ddir {
  if [[ "$1" == "set" || "$1" == "enable" ]]; then
    pwd > ~/.ddir
  elif [[ "$1" == "disable" ]]; then
    rm ~/.ddir
  else
    cd "$(<~/.ddir)"
  fi
}

function print-path {
  echo "${PATH//:/$'\n'}"
}
