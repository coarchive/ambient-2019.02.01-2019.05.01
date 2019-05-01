#!/bin/bash

echo "aliases"
# Aliases are for one liners that aren't that complicated
# They're also only meant for the user (me) to use

# some more ls aliases
alias ls="exa"
alias lsa="exa -a"
alias lsw="exa -la"
alias lsd="exa -la --tree"

# moving around
alias r="ranger"
alias ..="cd .."
alias bc="cd -"

# root
alias apt="sudo apt"
alias sul="su -l"

# I seem to have trouble typing "yoruvue-dl"
alias ytdl="youtube-dl"
alias scdl="youtube-dl --embed-thumbnail"

# gcc
alias g++="g++ -pedantic -Wall -Wextra -g3"
