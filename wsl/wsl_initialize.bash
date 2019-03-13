#!/bin/bash

# リポジトリを日本国内のものに変更する
sudo sed -i .bak -e "s/http:\/\/archive\.ubuntu\.com/http:\/\/jp\.archive\.ubuntu\.com/g" /etc/apt/sources.list

# packageに触る前に一度更新しておく
sudo apt update
sudo apt upgrade -y

# 今後に必要なpackageをまとめてDLする
sudo apt install language-pack-ja manpages-ja manpages-ja-dev x11-apps x11-utils x11-xserver-utils dbus-x11

# 日本語環境を設定する
sudo update-locale LANG=ja_JP.UTF-8

# タイムゾーンを日本に変更する
sudo sh -c 'echo "Asia/Tokyo" > /etc/timezone'
sudo dpkg-reconfigure -f noninteractive tzdata

# Windows側のフォントをLinux上でも使えるようにする Ubuntu使うと思うからapt決め打ちしておく
sudo apt -y install fontconfig
sudo ln -s /mnt/c/Windows/Fonts /usr/share/fonts/windows
sudo fc-cache -fv
