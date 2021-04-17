#!/bin/sh

# Load all zsh files
typeset -U config_files
config_files=($HOME/.dotfiles/(**|^atom\.symlink)/*.zsh)

for file in ${(M)config_files:#*/*.zsh}
do
  source $file
done
unset config_files
