#!/bin/sh
# hostchange.sh - helper for changing user (host)
if ["$1" == ""]; then
    echo "No arguments specified!"
    echo "Usage:: $0 <new-hostname>" # $0 is programm name
    exit 1
fi
if ["$1" == "legacy"]; then
    echo "Entering legacy mode..
    read -p "New user wheel: " usr
    rm -rf ./etc/hostname
    touch ./etc/hostname
    echo "$usr" > ./etc/hostname
fi

rm ./etc/hostname
echo $1 > ./etc/hostname 
