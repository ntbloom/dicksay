#!/usr/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "must be root"
    exit 1
fi

case `lsb_release -is` in
    Fedora)
        ln -sf $PWD/*.cow /usr/share/cowsay/cows/
        ;;
    *)
        echo "not supported"
        ;;
esac
