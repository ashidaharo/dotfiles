#!/bin/bash
#install basic apt packages

sudo apt update
sudo apt upgrade

# Xserver
sudo apt install x11-apps x11-utils x11-xserver-utils dbus-x11

# fcitx
sudo apt install fcitx-mozc

sudo apt autoremove
sudo apt autoclean
