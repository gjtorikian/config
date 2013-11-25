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
if [[ "$TERM" != "dumb" ]]; then
	export PROMPT="%D{%a %m/%d %R} $PROMPT"
fi

HISTFILE=~/.zhistory
SAVEHIST=10000
HISTSIZE=$SAVEHIST

WORDCHARS=${WORDCHARS//\//}

preexec() { print -nr $'\033'"]2;${1%% *}"$'\a' }
precmd() { print -nr $'\033'"]2;$0"$'\a' }

#export CLICOLOR=1

export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/home/user/perl5";
export PERL_MB_OPT="--install_base /home/user/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/user/perl5";
export PERL5LIB="/home/user/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/user/perl5/bin:$PATH";
