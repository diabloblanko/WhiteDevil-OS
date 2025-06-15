#!/bin/bash
# WhiteDevilOS fetch/configure.sh
echo "WARNING:: Fetch requires compiling WhiteDevilOS development-kit."
echo "Creating fetch.h required by fetch.c."
get_hostname=$(cat latest/etc/hostname)
get_kernel_ver=$KERNEL_VER # requires 