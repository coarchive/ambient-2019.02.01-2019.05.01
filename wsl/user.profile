# set PATH so it includes user's private bins if they exist
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# run the "global" bourne shell profile
. $dotfiles/bourne.profile
