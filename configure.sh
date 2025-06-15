#!/bin/bash
gethelp() {
    printf(
        "WhiteDevil-OS build.sh usage:\n"
        "all             :: Recommended. Build all.\n"
        "no-devkit       :: Build without development kit. Devkit is required by fetch.\n"
        "no-fetch        :: Build without fetch\n"
        "no-pyutils      :: Build without pyutils extension. Clear and calc will be missing.\n")
}
no-devkit() {
    BP="./usr/src/baseutils"
    BPY="./usr/src/py"
    DD="./bin"
    cp $BP/cat.sh $DD/cat
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
