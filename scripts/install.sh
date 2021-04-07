#!/bin/bash

home_files=(".gitignore_global" ".gitconfig" ".zshrc" "tmux.conf" )
config_files=("fish/config.fish")
i3_files=("i3/config")

echo "Installing home config files: git, zshrc"
for f in ${home_files[@]}; do
    ln -si $(pwd)/$f ~/$f 
done
echo "Installing i3 config"
for f in ${i3_files[@]}; do
    ln -si $(pwd)/$f ~/.config/$f 
done

ln -si ./applications ~/.local/share/
ln -si ./gtk-3.0 ~/.config/
ln -si ./sway ~/.config/
ln -si ./waybar ~/.config/
sudo ln -si ./systemd/battery-charge-threshold.service /etc/systemd/system/
