#! /usr/bin/env sh

# docker
sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
 | curl -fssl https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 | sudo apt-key fingerprint 0ebfcd88

 |sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
