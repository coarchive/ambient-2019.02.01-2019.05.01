#shellcheck shell=bash

if ! $root; then
  hatch gccxx
  hatch aliases
  hatch functions
fi
