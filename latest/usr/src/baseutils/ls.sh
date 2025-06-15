#!/bin/bash
# Part of WhiteDevilOS 
gethelp() {
    printf(
        "WhiteDevilTools LS v1. Usage"

    )
}
if [ "$1" == "" ]; then
    echo "ls: ERR: Missing operand."
    gethelp()
fi
