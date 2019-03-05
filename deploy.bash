#!/usr/bin/env bash
set -eu
rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude "install.bash" \
	--exclude "deploy.bash" \
	--exclude "Makefile" \
	--exclude "wsl" \
	--exclude "README.md" \
	--exclude "LICENSE" \
	-avh --no-perms . ~;
source ~/.profile;

if uname -r | grep -i 'microsoft'; then
	bash ./wsl/wsl_deploy.bash
fi
