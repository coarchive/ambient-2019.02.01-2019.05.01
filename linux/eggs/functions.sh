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

function cxx-generate {
  g++ -g -pedantic -Wall -Wextra -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wmissing-include-dirs -Wnoexcept -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Werror -Wno-unused $1 -o $2
}

function cxx {
  out="./$1.out"
  g++ -g -Wall -Wextra -Werror "$1" -o "$out" && ("$out"; rm "$out")
}

function wcxx {
  out="./a.exe"
  if [ -f "$out" ]; then
    rm "$out"
  fi
  wexe "$(cxx-generate "$1" "$out")"
}

function cxxx {
  out="./$1.debug"
  g++ -Wall -Wextra -Werror "$1" -o "$out" && (gdb "$out"; rm "$out")
}
