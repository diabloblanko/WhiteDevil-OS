# WARNING: NON-USABLE STATE!!!!!!
# WhiteDevilOS 1
## What is that??
Thats Virtual OS, forked from github.com/maldidev/gib-os that you cant run on your PC without other OS in middle
## How to build it and run?
## Dependencies:
* Python 3*
* C compiler (see ## C compiler)
* Shell interpreter(BASH)
## If you use Linux
* NOTE: You can compile everything by yourself with "If you use other OS" guide.
### Give yourself acsses to run progs from ./bin/
```bash
chmod +x ./bin/*
```
### And run!
```bash
$ chmod +x run
$ ./run
```
## If you use other OS
Give yourself permisson to execute build script
```bash
chmod +x configure.sh
```
## Allowed arguments for configure.sh:
* all            :: Recommended. Compiles every component from usr/src 
* no-devkit      :: Dont compile usr/src/development-kit
* no-gpm         :: Dont compile Gib-OS Package Manager
* no-fetch       :: Dont compile usr/src/fetch.
* no-pyutils     :: Dont compile py-utils
* delete-src     :: Delete usr/src after compiling
### Examples:
```bash
./configure.sh no-fetch
```
With other C compiler:
```bash
CC="clang" ./configure.sh all
```
### After configuring, run!
## usr/src includes
### Baseutils:
* cat.sh 
* chhost.sh
* edit.sh
* ls.sh
* touch.sh
### development-kit
* osinfo
### fetch
#### Requires development-kit.
* configure.sh
* fetch.c
### gpm
* gpm.py
###
### py
#### Extension of baseutils
* calc.py
* clear.py
## What's the difference?
* Rewrited fetch
* ls utility
* Rewrited touch and cat 
* /etc/welcome like /etc/motd in *NIX
* Removed etc/admin (Useless now.) (Maybe will be returned in future releases)