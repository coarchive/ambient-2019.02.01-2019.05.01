#shellcheck shell=bash

if ! $root; then
  hatch aliases
  hatch functions
fi
