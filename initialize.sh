#!/usr/bin/env bash

read -r -p "Install packages [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    ./install.sh
fi

# check if we are executed in the correct directory
if [[ ! -f ./initialize.sh ]]; then
	echo "PANIC: I am not executed in the correct directory!!!"
	exit -1
fi

./setup_symlinks.sh

read -r -p "Copy /etc? This whill overwrite current configs [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    ./cp_etc.sh
fi
