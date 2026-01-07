#!/usr/bin/env bash

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
