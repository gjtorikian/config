setopt appendhistory incappendhistory sharehistory histignorespace \
        autocd auto_pushd extendedglob nomatch notify
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/user/.zshrc'
autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:commands' rehash 1

autoload -U promptinit
promptinit
prompt walters normal

#HISTFILE=~/.zhistory
#SAVEHIST=10000
#HISTSIZE=$SAVEHIST

WORDCHARS=${WORDCHARS//\//}

preexec() { print -nr $'\033'"]2;${1%% *}"$'\a' }
precmd() { print -nr $'\033'"]2;$0"$'\a' }

#export CLICOLOR=1
