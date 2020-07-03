#!/bin/bash
​
sudo apt-get -y update
sudo apt-get -y upgrade

# Oh-my-Zsh
sudo apt-get install zsh -y

# Git
sudo apt-get install git-core -y

# Nodejs
wget -qO- https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs

# Truffle
sudo npm install -g --unsafe-perm truffle

# Move scripts to inside the VM
cp /vagrant/importProject.sh /home/vagrant/importProject.sh

# Manual commands :
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# --> TIP : vagrant default password is: vagrant

echo "************"
echo "INSTALL DONE"
echo "************"