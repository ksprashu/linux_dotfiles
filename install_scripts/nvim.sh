#!/usr/bin/env bash

# add dependency
echo -e '\nInstall dependencies'
sudo apt-get install -y software-properties-common

# add PPA and install
echo -e '\nAdding PPA and installig neovim'
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim

# install Python dependencies
echo -e '\nInstalling Python dependencies'
sudo apt-get install -y python-dev python-pip python3-dev python3-pip

# update vim alternatives
echo -e '\nUpdating editor alternative config'
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

