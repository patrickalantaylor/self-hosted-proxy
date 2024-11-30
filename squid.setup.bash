#!/bin/bash 

## this is a script for the installation and configuraiton of the squid proxy
## this script was taken from https://coderevolution.ro/knowledge-base/faq/how-to-set-up-your-own-free-proxy-server/ on Nov 29 2024
## this script is tested on Ubuntu v 24.04 (LTS) on digital ocean droplet.
## run this with bash ./squid.setup.bash

# get apt set up
sudo apt update -y

#apt install squid proxy
sudo apt -y install squid
sudo apt -y install net-tools
sudo apt -y install apache2-utils

#start squid
sudo systemctl start squid
sudo systemctl enable squid

# show squid status
sudo systemctl status squid

# stop the squid service
sudo systemctl stop squid

#todo figure out how to set a password to envars
## or possibly userdata or script to call 
# htpasswd -b -c /etc/squid/passwords admin test101

#todo go through steps to set up auth

