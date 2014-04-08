#!/bin/bash

################################################################################
#   This script creates links to desired config files                          #
################################################################################

dir = ~/Code/dotfiles
olddir = ~/dotfiles_old
file = "vimrc vim zshrc on-my-zsh gvimrc tmux.conf"

echo "Creating $olddir for backup in -"
mkdir -p $olddir
echo "...done"

cd $dir

for p in $file;
do
    echo "Moving existing dotfiles to backupu"
    mv ~/.$p $olddir/
    echo "Create symlink to $file"
    ln -s $dir/.$p ~/.$p
done
