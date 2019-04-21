#shellcheck shell=bash

if $root; then
  PS1="\[$pink\]\u\[$purple\] & \[$cyan\]\w\[$orange\] !"
else
  PS1="\[$orange\]\u\[$bblue\] • \[$pink\]\w \[$bblue\] •"
fi
PS1+="\[$reset\] "
export PS1
