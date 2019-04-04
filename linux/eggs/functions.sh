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

function print-path {
  echo "${PATH//:/$'\n'}"
}

function npm-list {
  npm ls -g --depth=0
}

function symlink {
  ln -s "$1"
}

function cxx {
  out="./$1.out"
  g++ -g -Wall -Wextra -Werror "$1" -o "$out" && ("$out"; rm "$out")
}

function cxxx {
  out="./$1.debug"
  g++ -Wall -Wextra -Werror "$1" -o "$out" && (gdb "$out"; rm "$out")
}
