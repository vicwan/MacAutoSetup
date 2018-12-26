#!bin/bash

# replace source
gem sources --remove https://rubygems.org/
gem sources --add https://gems.ruby-china.com
# update ruby (must sudo cuz have no write permission)
sudo gem update --system

# install rvm
if [[ -e ~/.rvm]]; then

curl -L get.rvm.io | bash -s stable 
source ~/.bashrc
source ~/.bash_profile
