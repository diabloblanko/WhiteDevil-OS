#!/bin/sh
# This file is part of WhiteDevil OS.
gethelp() {
    printf(
        "WhiteDevilOS cat.sh v1 usage\n"
        "-v :: View version and exit\n"
        "<filename> View content of file."
    )
} 
if [ "$1" == ""]; then
    echo "cat::error::No arguments provided"
    exit 1
fi 
if [ "$1" == "-v"]; then
    echo "WhiteDevilOS cat.sh v1. "
cat $1