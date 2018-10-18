#!/bin/bash

home_files=(".gitignore_global" ".gitconfig" ".zshrc")
i3_files=("i3/config")

echo "Installing home config files: git, zshrc"
for f in ${home_files[@]}; do
    ln -si $(pwd)/$f ~/$f 
done
echo "Installing i3 config"
for f in ${i3_files[@]}; do
    ln -si $(pwd)/$f ~/.config/$f 
done
