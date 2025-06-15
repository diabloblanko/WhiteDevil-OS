#!/bin/sh
# This file is part of WhiteDevilOS
if [ "$1" == ""]; then
    echo "No arguments provided!"
else 
    nano $1
fi
