#   Sesstion 1
cp ./vagrant/setup/* ~/ 
#   vTest_versiont lockout
sudo mkdir /opt/vx && cd /opt/vx/ && sudo wget https://github.com/v2fly/v2ray-core/releases/tag/v4.33.0 
sudo unzip v2ray-linux-64.zip ./ && sudo cp ~/vag_setup/vagrant/config.json/ ./ 
#   Sesstion 2
tmux && source ./fireV.sh
tmux new window
#   install
source ./apt.sh
source ./npm.sh
