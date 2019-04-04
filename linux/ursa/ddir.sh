# shellcheck shell=bash

function ddir {
  if [[ "$1" == "set" || "$1" == "enable" ]]; then
    pwd > ~/.ddir
  elif [[ "$1" == "disable" ]]; then
    rm ~/.ddir
  elif [ -r ~/.ddir ]; then
    cd "$(<~/.ddir)" || exit 1
  elif [ $PWD = /mnt/c/Users/Alf ]; then
    cd Desktop
  fi
}
ddir
