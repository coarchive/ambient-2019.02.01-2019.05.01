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
alias bc="cd -"
function r {
  tempfile="$(mktemp -t tmp.XXXXXX)"
  ranger --choosedir="$tempfile" "${@:-$PWD}"
  test -f "$tempfile" &&
  if [ "$(cat -- "$tempfile")" != "$PWD" ]; then
    cd -- "$(cat "$tempfile")"
  fi
  rm -f -- "$tempfile"
}

# linuxbrew stuff
export HOMEBREW_NO_AUTO_UPDATE=1
umask 002
function start-brew {
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
}

function print-path {
  echo "${PATH//:/$'\n'}"
}
