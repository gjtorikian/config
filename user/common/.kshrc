[[ $- = *i* ]] || return
set -o emacs
bind -m ^L=clear^M
bind ^I=complete-list
