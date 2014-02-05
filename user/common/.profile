[ -z "$PS1" ] && return
umask 022
PATH=$HOME/bin:$PATH:/usr/local/bin
export EDITOR=vim
export PAGER=less
export LESS="-e -i -m -Q -R -W -X"
export TMPDIR=$HOME/tmp
export PYTHONPATH=$HOME/lib/python:/usr/local/lib64/python2.6/site-packages:$PYTHONPATH
unset HISTFILE
alias ls='ls --color=never'
if [ -z "$SSH_AUTH_SOCK" ]; then
	eval `ssh-agent -s`
	trap "kill $SSH_AGENT_PID" 0
fi
