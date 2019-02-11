# some more ls aliases
alias ls="exa"
alias lsa="ls -A"

# I seem to have trouble typing "yoruvue-dl"
alias ytdl="youtube-dl"
alias scdl="youtube-dl --embed-thumbnail"

# node
# Wait until VSCode works better with WSL for pnpm support with ESLint
#alias npm="pnpm"

# windows
alias clip="clip.exe"
alias cmd="cmd.exe"
alias posh="cmd /C powershell.exe -NoLogo"
alias winsudo="posh "

# root
alias apt="sudo apt"
alias su="su -l"

# moving around
alias ..="cd .."
alias bc="cd $OLDPWD"
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
