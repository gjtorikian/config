#!/bin/sh

PATH=$HOME/bin:$PATH; export PATH
TMPDIR=$HOME/tmp; export TMPDIR
mkdir -p $TMPDIR
xhost -
xhost +local:root
mkdir -p ~/.fonts
xset +fp ~/.fonts/
xset fp rehash
xrdb -load ~/.Xdefaults
xsetroot -solid rgb:0/0/0
xset b off
#xidle &
#xeyes & xbiff & xclock & xload &
#xterm &
[ -f ~/.xinitrc.local ] && . ~/.xinitrc.local

if [ -z "$SSH_AUTH_SOCK" ]; then
	eval `ssh-agent -s`
	trap "kill $SSH_AGENT_PID" 0
fi

#exec twm
while xsetroot -name "`stats.sh`"; do :; done &
exec dwm
