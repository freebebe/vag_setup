sudo apt install zip vim neovim curl wget aria2 tree tmux python3 python3-dev python3-pip python3-gpg python3-setuptools ruby-full ruby-sass ncdu fonts-font-awesome preload ranger fzf rclone shellcheck qrencode peek fish proxychains4 dolphin firejail lnav pandoc httpie zplug tree zsh kitty -y

# Docker
sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

