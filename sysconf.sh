#!bin/bash

# generate ssh
if [[ ! -d ~/.ssh ]]; then
	bash sshgen.sh
	ln -s ~/.ssh/id_rsa.pub ~/desktop/sshpub
fi

# Disable app verifying
sudo spctl --master-disable
defaults write com.apple.LaunchServices LSQuarantine -bool false