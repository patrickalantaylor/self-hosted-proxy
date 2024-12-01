#!/bin/bash 

## this is a script for the configuraiton of the squid proxy
## this script depends on the user-data script included in this repo to be run on furst launch. 
## In a digital ocean droplet, the user data is entered on droplet creation under [We recommend these options] / Advanced / Add Initialization scripts (free)
## parts of this script was taken from https://coderevolution.ro/knowledge-base/faq/how-to-set-up-your-own-free-proxy-server/ on Nov 29 2024
## this script is tested on Ubuntu v 24.04 (LTS) on digital ocean droplet.
## run this with bash ./squid.setup.bash

#start squid
sudo systemctl start squid
sudo systemctl enable squid

# show squid status
sudo systemctl status squid

# stop the squid service
sudo systemctl stop squid

#todo create a reference squid.conf


#todo go through steps to set up auth

