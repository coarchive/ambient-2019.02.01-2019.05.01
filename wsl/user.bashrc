# some more ls aliases
alias ls="exa"
alias lsa="ls -A"

# I seem to have trouble typing "yoruvue-dl"
alias ytdl="youtube-dl"
alias scdl="youtube-dl --embed-thumbnail"

# windows
alias clip="clip.exe"
alias cmd="cmd.exe"

# root
alias apt="sudo apt"
alias su="su -l"

# moving around
alias ..="cd .."
function r {
  tempfile="$(mktemp -t tmp.XXXXXX)"
  ranger --choosedir="$tempfile" "${@:-$(pwd)}"
  test -f "$tempfile" &&
  if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
    cd -- "$(cat "$tempfile")"
  fi
  rm -f -- "$tempfile"
}

# linuxbrew stuff
function start-brew {
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  umask 002
}
