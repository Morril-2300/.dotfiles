#!/usr/bin/env bash

sudo echo "Installing packages"

sudo pacman -Syy

#paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

paru -S yay-git

sudo pacman -S archlinux-keyring
yay -S hyprland-git
sudo pacman -S waybar greetd-agreety gnome-keyring
paru -S vscodium-bin