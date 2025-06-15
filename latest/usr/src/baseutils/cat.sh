#!/bin/bash
# WhiteDevilOS cat.sh
# Legacy mode is ported from Gib-OS 1.1#!/bin/sh
# This file is part of WhiteDevil OS.
gethelp() {
    printf(
        "WhiteDevilOS cat.sh v1 usage\n"
        "-v         :: View version and exit\n"
        "<filename> :: View content of file."
        "legacy     :: Use legacy mode from Gib-OS v1.1"
    )
} 
if [ "$1" == ""]; then
    echo "cat::error::No arguments provided"
    gethelp()
    exit 1
fi 
if [ "$1" == "-v"]; then
    echo "WhiteDevilOS cat.sh v1 "
fi
if [ "$1" == "legacy"]; then
    echo "Entering cat.sh legacy mode..."
    read -p "File for view> " f
    cat ./home/local/$f
fi
cat $1
