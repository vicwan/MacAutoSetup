### 将系统最好更新至最新

## Features
- 各阶段的 echo 信息生成 report，输出到桌面的某个文件中
- 

## 1. 安装基础组件

### 1.1 安装 homebrew

1. 安装 homebrew
2. 把 homebrew 换为清华源

### 1.2 安装 git

`brew install git`

install.sh

### 1.3 安装 ruby
- 独立出来

1. 安装 ruby
2. 把 ruby 更换为国内源

### 1.4 安装 cask（安装非 App Store 的 App）

### 1.5 安装 mas（安装 App Store 中的 App）

### 1.6 安装 python 环境

### 1.7 安装 cocoapods
- cocoaPods 换国内源



## 2. 安装应用

### 使用 brew cask 安装

1. coconutbattery (`brew cask install coconutbattery`)
2. xunlei (`brew cask install thunder`)
3. googlechrome (`brew cask install google-chrome`)
4. 有道云笔记（`brew cask install youdaonote`）
5. 有道词典（`brew cask install youdaodict`）
6. iterm (`brew cask install iterm2`)
   - 需要对 iterm 进行个性化配置
7. zsh
   - 需要配置 zsh 文档（.zshrc)
8. 搜狗输入法（`brew cask install sogouinput`)
9. 微信（`brew cask install wechat`)
10. vscode (`brew cask install visual-studio-code`)
    - shell format (`brew install shfmt`)
    - python
    - vscode 的配置估计需要单独写个文件，因为如果以后是重度 vscode 使用者的话，配置项应该还是挺多的
    - 同步 vscode 插件，参考 macbootstrap
11. typora `(brew cask install typora`)
12. mounty(`brew cask install mounty`)
13. go2shell (`brew cask install go2shell`)
    - 把go2shell 的默认终端设置为 iterm2 `defaults write com.zipzapmac.Go2Shell "Terminal Identifier" "com.googlecode.iterm2"`
14. the unarchiver (`brew cask install the-unarchiver`)
15. vlc视频播放器 (`brew cask install vlc`)

### 使用 mas 安装

1. 奇妙清单 （`mas install 410628904`）
2. xcode 10.1 (`mas install 497799835`)

### Crack

1. magnet
2. mindnode
3. istat menus
4. CleanMyMac X
5. charles

## 3. 将 mac 进行个性化配置（如键位，文件显示等）

1. 生成 ssh
   - 在桌面上生成一个文件夹，里面放一个 ssh-publickey 的快捷方式，省的去文件夹里面找
2. 总是可以打开自己下载的执行文件
```
sudo spctl --master-disable
defaults write com.apple.LaunchServices LSQuarantine -bool false
```
3. 三指拖动窗口 (目前这个脚本貌似已经没用了)
```
# Enable three finger to drag
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
# defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
```
4. 关闭自动修正
```
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
```
5. F1-F12 的功能键需要使用 fn 来激活
```
defaults write -g com.apple.keyboard.fnState -int 1
```
6. 自动隐藏 dock
```
defaults write com.apple.dock autohide -bool true
```
7. 自动隐藏上面工具栏
8. 触控板轻按点击
9. 隐藏 dock
10. 隐藏上方状态栏

