#!/usr/bin/env bash
set -eu
git pull origin master

rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude "initialize.bash" \
	--exclude "deploy.bash" \
	--exclude "apt.bash" \
	--exclude "Makefile" \
	--exclude "wsl" \
	--exclude "README.md" \
	--exclude "LICENSE" \
	-avh --no-perms . ~;
source ~/.profile;

if uname -r | grep -iqs 'microsoft'; then
	cd ./wsl
	bash ./wsl_deploy.bash
	cd ..
fi
