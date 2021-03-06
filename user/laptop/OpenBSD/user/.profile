# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
export PATH HOME TERM

export PAGER=less
export LESS="-e -i -m -Q -W -X"

export VISUAL=vim
set -o emacs

export MAIL=/var/mail/$USER

export ENV=$HOME/.kshrc

export PKG_PATH=ftp://ftp3.usa.openbsd.org/pub/OpenBSD/`uname -r`/packages/`arch -s`
#export CVSROOT=anoncvs@anoncvs.usa.openbsd.org:/cvs
#export PKG_CACHE=/tmp

export PYTHONPATH=$HOME/lib/python2.7/site-packages

export PERL5LIB=$HOME/libdata/perl5/site_perl
