echo Running global.profile
if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

export dotfiles=$ambient/wsl

if [ -d $dotfiles/profile.d ]; then
  for i in $dotfiles/profile.d/*.bash; do
    if [ -r $i ]; then
      . $i
    fi
  done
fi

export PS1="\u in \w $ "
mesg n
