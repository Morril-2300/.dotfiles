#!/usr/bin/env bash
## from github.com/second2050/dotfiles

# check if we are executed in the correct directory
if [[ ! -f ./setup_symlinks.sh ]]; then
	echo "PANIC: I am not executed in the correct directory!!!"
	exit -1
fi

# ~/.config
ln -sfv "$(pwd)"/config/* -t "$HOME"/.config/

# ~
(
	cd ./home || exit
	for file in *; do
		ln -sfv "$(pwd)/$file" "$HOME"/."$file"
	done
)
