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
