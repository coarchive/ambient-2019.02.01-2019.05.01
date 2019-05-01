#!/bin/bash

opts=(
  -e 2155 # non constant source
  -e 2164 # cd without ||
)
export SHELLCHECK_OPTS="${opts[*]}"
