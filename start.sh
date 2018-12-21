#!bin/bash

if [[! -e ~/.macautosetup]]; then
	rm -rf ~/.macautosetup
fi

if [[ ! -e /usr/local/bin/brew ]]; then
	# change source && avoid prompt && quiet install
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	# Change source
	cd "$(brew --repo)"
	git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git

	cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
	git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git

	export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
else
	echo "You have installed brew"
fi

brew install git

git clone --depth=1 https://github.com/vicwan/MacAutoSetup ~/.MacAutoSetup
cd ~/.MacAutoSetup
