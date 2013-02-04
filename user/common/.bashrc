# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#alias ls='ls --color=none'
stty werase undef
bind '"\C-w": backward-kill-word'
