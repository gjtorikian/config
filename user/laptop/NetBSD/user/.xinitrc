#!/bin/sh

export PATH=$HOME/bin:$PATH
export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR
xhost -
xhost +local:root
xset +fp ~/.fonts/
xset fp rehash
xrdb -load ~/.Xdefaults
xsetroot -solid rgb:0/0/0
xset b off
xautolock &
xterm &
exec wmii
