#!/usr/bin/env bash

sudo echo "Installing packages"

sudo pacman -Syy

sudo pacman -S archlinux-keyring base base-devel nano zsh amd-ucode

#paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

paru -S yay-git
yay -S hyprland-git
paru -S vscodium-bin

cat packagelist | sudo pacman -S -