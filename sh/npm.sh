curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

mkdir ~/.npm-global
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=$PATH:~/.npm-global/bin
echo -e "export NPM_CONFIG_PREFIX=~/.npm-global\nexport PATH=\$PATH:~/.npm-global/bin" >> ~/.bashrc

proxychains npm install sass -g
proxychains npm install webpack webpack-cli -g
proxychains npm install @vue/cli -g
proxychains npm install gulp-cli -g
proxychains npm install typescript -g
proxychains npm install bootstrap@next -g
proxychains npm install @popperjs/core -g
proxychains npm install portal-vue -g
proxychains npm install vue bootstrap npm i portal-vuebootstrap-vue -g

