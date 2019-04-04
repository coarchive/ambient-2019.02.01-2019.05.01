#shellcheck shell=bash

if $root; then
  PS1="\[$pink\]\u\[$purple\] & \[$cyan\]\w\[$orange\] !"
else
  PS1="\[$orange\]\u\[$cyan\]::\[$yellow\][\[$pink\]\w\[$yellow\]]"
fi
PS1+="\[$reset\] "
export PS1
