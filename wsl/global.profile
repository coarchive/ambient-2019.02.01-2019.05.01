#!/bin/bash

if [ -z "$C" ]; then
  source /etc/environment
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r "$i" ]; then
      source "$i"
    fi
  done
  unset i
fi


export PS1="\u in \w $ " # Bad but functional prompt
mesg n # I forgot what this does but I think it might be important
