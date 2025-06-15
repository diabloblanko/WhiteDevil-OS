#!/bin/bash
# WhiteDevilOS
if [ "$1" == "legacy"]; then
    read -p "File for edit: " f
    nano ./home/local/$f
fi