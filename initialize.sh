#!/usr/bin/env bash

./setup_symlinks.sh

read -r -p "Copy /etc? This whill overwrite current configs [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    ./cp-etc.sh
fi
