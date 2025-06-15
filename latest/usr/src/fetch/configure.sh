#!/bin/bash
# WhiteDevilOS fetch/configure.sh
echo "WARNING:: Fetch requires compiling WhiteDevilOS development-kit."
echo "Creating fetch.h required by fetch.c."
get_hostname=$(cat latest/etc/hostname)
get_kernel_ver=$KERNEL_VER 
ds="./usr/src/fetch/fetch.h"
touch $ds
echo "#include <stdio.h>"                  | tee -a $ds 
echo "#define osname \"$OSNAME"\ "         | tee -a $ds
echo "#define hostname \"$get_hostname"\ " | tee -a $ds
echo "#define kernel \"$KERNEL_NAME"\ "    | tee -a $ds
echo "#define kernel_ver \"$KERNEL_VER"\ " | tee -a $ds 
echo "$ds created succsesfully."