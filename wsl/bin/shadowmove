#!/bin/bash
set -o errexit

if [ "$#" -lt 2 ] || [ "$#" -gt 4 ]; then
  echo "${red}Illegal number of parameters$reset"
  exit 1
fi

while true; do
  if [ -z $1 ]; then
    break
  fi
  if [ $1 = "from" ]; then
    src=$2
  elif [ $1 = "to" ]; then
    dest=$2
  else
    shift
  fi
  shift
  shift
done

if [ -z src ]; then
  src=$1
  shift
fi

if [ -z dest ]; then
  dest=$1
fi

mv $src $dest
ln -s $dest $src
