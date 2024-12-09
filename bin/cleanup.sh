#!/bin/bash

# Removes the .nanorc file in the home directory
rm "~/.nanorc"

#Removes the last line from the .bashrc file in the home directory
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' "~/.bashrc"

#Removes .TRASH from the home directory
rm "~/.TRASH"
