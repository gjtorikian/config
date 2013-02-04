TMPDIR=$HOME/tmp
PATH=$HOME/bin:$PATH

mkdir -p $TMPDIR
xhost -
xhost +local:root
xset b off
test -r ~/.Xdefaults && xrdb -load ~/.Xdefaults
[ -f ~/.fonts/fonts.dir ] && xset +fp ~/.fonts
sh ~/.xplanet/xplanet.sh
xset fp rehash
xsetroot -solid rgb:6/6/6
xosview &
xscreensaver -no-splash &
unclutter -root &
urxvtd -q -f -o
exec fvwm
