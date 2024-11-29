#!/bin/bash 

## this is a script for the installation and configuraiton of the squid proxy
## this script was taken from https://coderevolution.ro/knowledge-base/faq/how-to-set-up-your-own-free-proxy-server/ on Nov 29 2024
## this script is tested on Ubuntu v 24.04 (LTS) on digital ocean droplet.
## run this with bash ./squid.setup.bash

# get apt set up
sudo apt update -y

#apt install squid proxy
sudo apt -y install squid

#start squid
sudo systemctl start squid
sudo systemctl enable squid

# show squid status
sudo systemctl status squid
