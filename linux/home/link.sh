#!/bin/bash

home="$dotfiles/home/"
ln -s "$home.bash_profile" ~/.bash_profile
ln -s "$home.bash_login" ~/.bash_login
ln -s "$home.profile" ~/.profile
ln -s "$home.bashrc" ~/.bashrc
ln -s "$home.bash_logout" ~/.bash_logout
