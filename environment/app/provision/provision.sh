#!/bin/bash

# install git
sudo apt-get install git -y
# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
# install pm2
sudo npm install pm2 -g


sudo apt-get update
sudo apt-get upgrade
sudo apt-get install nginx -y
sudo unlink /etc/nginx/sites-enabled/default
#link the original file from site-available to site-enable
sudo ln -s /home/ubuntu/app/reverse-proxy.conf /etc/nginx/sites-available/reverse-proxy.conf
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
sudo service nginx restart
