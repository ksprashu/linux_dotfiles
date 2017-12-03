#!/usr/bin/env bash

# remove all older versions of docker
echo 'removing legacy versions of docker...'
sudo apt-get remove docker docker-engine docker.io

# apt-get update
echo 'updating apt...'
sudo apt-get update

# install dependencies
echo 'installing dependencies...'
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# get GPG key
echo 'adding GPG key...'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# check fingerprint
echo 'checking fingerprint, should return some text'
sudo apt-key fingerprint 0EBFCD88

# add stable repo
echo 'adding docker repo'
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# apt-update
echo 'updating apt again'
sudo apt-get update

# install docker
echo 'installing docker ce'
sudo apt-get install -y docker-ce

# test successful installation
echo 'testing installation'
sudo docker run hello-world

