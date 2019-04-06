# shellcheck shell=bash

function go {
  if [ -r ~/.ddir ]; then
    cd "$(<~/.ddir)"
    return 0;
  else 
    return 1;
  fi
}

function ddir {
  if [[ "$1" == "set" || "$1" == "enable" ]]; then
    pwd > ~/.ddir
  elif [[ "$1" == "disable" ]]; then
    rm ~/.ddir
  elif [[ "$1" == "go" ]]; then
    go
  fi
}


if ! go && [ "$PWD" = /mnt/c/Users/Alf ]; then
  cd Desktop
fi
