echo "user.bash_profile"
shopt -s autocd
# shopt -s cdable_vars
shopt -s cdspell
shopt -s checkhash
shopt -s dirspell

if [ -x $dotfiles/user.bashrc ]; then
  source $dotfiles/user.bashrc
fi
