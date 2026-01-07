#!/usr/bin/env bash

# check if we are executed in the correct directory
if [[ ! -f ./cp_etc.sh ]]; then
	echo "PANIC: I am not executed in the correct directory!!!"
	exit -1
fi

if [ ! -d "etc.backup" ]; then
  mkdir etc.backup
fi

ETC=$(ls ./etc)

for conf in $ETC; do 
    {
        cp -r /etc/"$conf" ./etc.backup/ 2> /dev/null
    } || {
        echo "$conf not found in /etc. Backup skipped."
    }
done

sudo cp -r ./etc/* /etc/
