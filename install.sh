#!bin/bash

source func.sh

# cask
caskpath="/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask"
if [[ -e caskpath ]]; then
	malog "Cask is already installed."
else
	malog "Ready to install brew cask..."
fi

# install or update mas
brew install mas

# python
brew install python

# ruby
bash ruby.sh
# cocoapods
sudo gem install cocoapods
sudo gem install -n /usr/local/bin cocoapods

# go to install apps
bash apps.sh
