#!/bin/bash

shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s dirspell

# nice prompt
export PS1="\[$green\]\u\[$yellow\] in \[$cyan\]\w\[$purple\] λ \[$reset\]"

# run the bashrc too
if [ -x "$dotfiles/user.bashrc" ]; then
  source "$dotfiles/user.bashrc"
fi

export PATH="$HOME/.cargo/bin:$PATH"
