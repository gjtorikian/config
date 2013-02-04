export PS1='\u@\h:\w\$ '
export PATH=$HOME/bin:/opt/csw/bin:$PATH
export PAGER=less
export LESS="-e -i -m -Q -W -X"
unset HISTFILE
stty werase undef
bind '"\C-w": backward-kill-word'
