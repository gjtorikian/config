TMPDIR=$HOME/tmp
PATH=$HOME/bin:$PATH

mkdir -p $TMPDIR
xhost -
xhost +local:root
xset b off
test -r ~/.Xdefaults && xrdb -load ~/.Xdefaults
xset +fp ~/.fonts
xset fp rehash
xsetroot -solid rgb:6/6/6
#xeyes & xbiff & xload & xclock &
xload &
xidle &
tpb -d
uxterm &
exec scrotwm
