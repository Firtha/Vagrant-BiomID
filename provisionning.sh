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

# MongoDB (https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo chown -R mongodb:mongodb /var/lib/mongodb
sudo chown mongodb:mongodb /tmp/mongodb-27017.sock
sudo systemctl enable mongod

# Truffle
sudo npm install -g --unsafe-perm truffle

# Move scripts to inside the VM
cp /vagrant/importProject.sh /home/vagrant/importProject.sh
cp /vagrant/exportNodejs.sh /home/vagrant/exportNodejs.sh

# Manual commands :
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# chsh -s /usr/bin/zsh vagrant
# --> TIP : vagrant default password is: vagrant

echo "************"
echo "INSTALL DONE"
echo "************"