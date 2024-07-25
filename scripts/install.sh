#!/usr/bin/env bash
# Install script for the config

HOME_FILES=(".gitignore_global" ".gitconfig" ".zshrc" ".tmux.conf" ".nix-channels" ".profile" )
echo "Installing ~/ files: $HOME_FILES"
for f in ${HOME_FILES[@]}; do
    ln -siv $(pwd)/$f ~/$f
done

CONFIG_FILES=("fish/config.fish" "nix" "mpv" "zoomus.conf") # "i3/config" "gtk-3.0" "sway/config" "waybar/config"
echo "Installing ~/.config files: $CONFIG_FILES"
for f in ${CONFIG_FILES[@]}; do
    ln -siv $(pwd)/.config/$f ~/.config/$f
done

LOCAL_SHARE_FILES=("applications")
echo "Installing ~/.local/share files: $LOCAL_SHARE_FILES"
for f in ${LOCAL_SHARE_FILES=[@]}; do
    ln -sivd $(pwd)/.local/share/$f ~/.local/share/
done

# sudo ln -si ./systemd/battery-charge-threshold.service /etc/systemd/system/
