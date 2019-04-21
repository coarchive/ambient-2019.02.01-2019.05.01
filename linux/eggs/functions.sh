#!/bin/bash

function r {
  local tempfile="$(mktemp -t tmp.XXXXXX)"
  ranger --choosedir="$tempfile" "${@:-$PWD}"
  test -f "$tempfile" &&
  if [ "$(cat -- "$tempfile")" != "$PWD" ]; then
    cd -- "$(cat "$tempfile")" || exit 1
  fi
  rm -f -- "$tempfile"
}

function my-path {
  echo "${PATH//:/$'\n'}"
}

function npm-list {
  npm ls -g --depth=0
}

function symlink {
  ln -s "$1"
}

function d0t {
  n="$(basename -- "$1")"
  "dot -T$2 $n.dot -o $n.$2"
}
