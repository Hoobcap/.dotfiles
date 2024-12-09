#!/bin/bash

# Checks if the OS is Linux
if [ "$(uname)" != "Linux" ]; then
	echo "Error: This script requires linux." >> linuxsetup.log
	exit 1
fi

# Makes a .TRASH directory in the home directory if it doesn't already exist
mkdir -p ~/.TRASH

# Checks if .nanorc exists in the home directory, if so, it changes its name
if [ -f "~/.nanorc" ]; then
	mv "~/.nanorc" "~/.bup_nanorc"
	echo "The .nanorc file in the home directory has been renamed to .bup_nanorc"
fi

# Redirects the contents of /etc/nanorc to .nanorc in the home directory
cp /etc/nanorc "~/.nanorc"

# Appends .bashrc to the .bashrc file in the home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> "~/.bashrc"
