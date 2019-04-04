#shellcheck shell=bash

if $root; then
  PS1="\[$pink\]\u\[$purple\] & \[$cyan\]\w\[$orange\] !"
else
  PS1="\[$green\]\u\[$yellow\] in \[$cyan\]\w\[$purple\] λ"
fi
PS1+=" \[$reset\]"
export PS1
