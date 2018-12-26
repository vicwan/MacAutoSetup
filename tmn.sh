#!bin/bash

# 这个脚本处理与‘终端（terminal）’ 相关
source func.sh

# iterm2 (https://www.cnblogs.com/weixuqin/p/7029177.html)
if [[ ! -e /Applications/iTerm.app ]]; then
	malog "Ready to install iterm2..."
	brew cask install iterm2
else
	malog "iTerm2 is already installed."
fi

# zsh

if [[ ! -e ~/.oh-my-zsh ]]; then
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	# 自动提示
	git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
	# 高亮
	brew install zsh-syntax-highlighting
	# copy .zshrc file
	cp ~/.zshrc .zshrc_bak
	cp .zshrc ~/.zshrc

	source ~/.zshrc
    chsh -s /bin/zsh
else
	malog "Zsh is already installed."
fi

# 下载字体并保存到桌面
curl https://raw.githubusercontent.com/powerline/fonts/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf -O ~/desktop

# go2shell
brew cask install go2shell
defaults write com.zipzapmac.Go2Shell "Terminal Identifier" "com.googlecode.iterm2"
