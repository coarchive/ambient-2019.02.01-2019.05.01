echo "global.profile"
if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

export dotfiles=$ambient/wsl # declare it here because it saves typing
if [ -d $dotfiles/profile.d ]; then
  for i in $dotfiles/profile.d/*.bash; do
    if [ -r $i ]; then
      . $i
    fi
  done
fi

export PS1="\u in \w $ " # Bad but functional prompt
mesg n # I forgot what this does but I think it might be important
