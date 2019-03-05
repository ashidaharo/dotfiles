#!/bin/bash
if uname -r | grep -i 'microsoft'; then
	cd ./wsl
	bash ./wsl_initialize.bash
	cd ..
fi
