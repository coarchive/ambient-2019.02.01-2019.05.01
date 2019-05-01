#!/bin/bash

# Run this as root!
if $root; then
  git clone git@github.com:tj/n.git __temp__n
  cd n
  mkdir -p /trash/bin
  PREFIX="/trash" make install
  N_PREFIX="/trash/been" /trash/bin/n latest
else
  err "install-n.sh should be run as root!"
fi
