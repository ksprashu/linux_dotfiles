#!/usr/bin/env bash

# install basic utils
echo -e '\nInstalling curl, vim, tmux, xclip, gawk, wget etc...'
sudo apt-get install -y curl vim tmux xclip gawk wget git

# install gpg key
echo -e '\nsetting up ssh keys...'
ssh-keygen -t rsa -b 4096 -C "ksprashanth82@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

