#!/bin/bash
gethelp() {
    printf(
        "WhiteDevil-OS build.sh usage:\n"
        "all             :: Recommended. Build all.\n"
        "no-devkit       :: Build without development kit. Devkit is required by fetch.\n"
        "no-fetch        :: Build without fetch\n"
        "no-pyutils      :: Build without pyutils extension. Clear and calc will be missing.\n")
}
all() {
    PF="./usr/src/fetch"
    PD="./usr/src/development-kit"
    BP="./usr/src/baseutils" # path to baseutils
    BPY="./usr/src/py" # path to pyutils
    PGPM="./usr/src/gpm"
    DD="./bin" # destination dir
    cp $BP/cat.sh $DD/cat
    cp $BP/chhost.sh $DD/chhost
    cp $BP/edit.sh $DD/edit
    cp $BP/ls.sh $DD/ls
    cp $BP/touch.sh $DD/touch
    echo "Baseutils installed."
    cp $BPY/clear.py $DD/clear
    cp $BPY/calc.py $DD
    echo "Pyutils installed."
    cp $PGPM/gpm.py $DD/gpm
    echo "GPM installed"
    bash $PD/osinfo
    echo "Devkit builded sucssesfully"
    bash $PF/configure.sh
    tcc $PF/fetch.c -o $DD/fetch
    echo "Fetch installed sucsessfully."
}
no-devkit() {
    BP="./usr/src/baseutils" # path to baseutils
    BPY="./usr/src/py" # path to pyutils
    PGPM="./usr/src/gpm"
    DD="./bin" # destination dir
    cp $BP/cat.sh $DD/cat
    cp $BP/chhost.sh $DD/chhost
    cp $BP/edit.sh $DD/edit
    cp $BP/ls.sh $DD/ls
    cp $BP/touch.sh $DD/touch
    echo "Baseutils installed."
    cp $BPY/clear.py $DD/clear
    cp $BPY/calc.py $DD
    echo "Pyutils installed."
    cp $PGPM/gpm.py $DD/gpm
    echo "GPM installed"
    echo "Everything installed succsesfully."
}
no-fetch() {
    PD="./usr/src/development-kit"
    BP="./usr/src/baseutils" # path to baseutils
    BPY="./usr/src/py" # path to pyutils
    PGPM="./usr/src/gpm"
    DD="./bin" # destination dir
    cp $BP/cat.sh $DD/cat
    cp $BP/chhost.sh $DD/chhost
    cp $BP/edit.sh $DD/edit
    cp $BP/ls.sh $DD/ls
    cp $BP/touch.sh $DD/touch
    echo "Baseutils installed."
    cp $BPY/clear.py $DD/clear
    cp $BPY/calc.py $DD
    echo "Pyutils installed."
    cp $PGPM/gpm.py $DD/gpm
    echo "GPM installed"
    bash $PD/osinfo
    echo "Devkit builded sucssesfully"
    echo "Everything installed sucssesfully."
}
}
for i in "$@"; do
  case $i in
    all)
        echo "TARGET::All"
        buildall()
        shift # past argument=value
        ;;
    no-devkit)
      echo "TARGET::no-devkit"
      echo "WARNING::Fetch will not be compiled!"
      no-devkit()
      shift
      ;;
    no-fetch)
        echo "TARGET::no-fetch"
        no-fetch()
        shift
        ;;
    no-pyutils)
        echo "TARGET::no-pyutils"
        echo "WARNING::These commands will be missing:"
        echo -e "*calc\n*clear"
        no-pyutils()
        shift
        ;;
    *)
      echo "ERROR::Unknown option $i. Calling help.."
      gethelp()
      exit 1
      ;;
  esac
done
