# shellcheck shell=bash

export C="/mnt/c"
export windir="$C/Windows"
bins=(
  # regular bins
  /usr/local/sbin
  /usr/local/bin
  /usr/sbin
  /usr/bin
  /sbin
  /bin
  # nodejs
  /trash/bin
  /trash/been/bin
  # my bin
  "$dotfiles/bin"
  "$dotfiles/common"
  # windows stuff
  $windir
  $windir/system32
)
bin_string=""
for i in "${bins[@]}"; do
  bin_string+="$i:"
done
unset bins
export PATH=${bin_string%?}
