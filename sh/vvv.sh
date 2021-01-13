mkdir ~/vvv && cd ~/vvv
wget 'https://github.com/v2fly/v2ray-core/releases/download/v4.34.0/v2ray-linux-64.zip'
sudo mkdir /opt/vvv
unzip v2ray-linux-64.zip
sudo cp -r ./* /opt/vvv
cd ~/ && rm -rf ~/vvv

sudo echo ~/git/vag_setup/vvv >> /opt/vvv/config.json


