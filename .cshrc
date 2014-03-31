# $FreeBSD: src/share/skel/dot.cshrc,v 1.10.2.3 2001/08/01 17:15:46 obrien Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h     history 25
alias j     jobs -l
alias la    ls -a
alias lf    ls -FA
alias ll    ls -lA

# A righteous umask
umask 002
limit   coredumpsize    0
set dspmbyte sjis

set path = (/usr/local/mysql/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin)

setenv LANG ja_JP.UTF-8
setenv LANGUAGE ja_JP.UTF-8
setenv LC_ALL ja_JP.UTF-8
setenv LC_COLLATE C
setenv LC_TIME C

setenv  EDITOR  vi
setenv  SVN_EDITOR vi
setenv  PAGER   more
setenv  BLOCKSIZE   K
set autolist

setenv CVSROOT :pserver:www@cvs.paq.to:/usr/local/CVS
alias cvs   'cvs -d $CVSROOT'
alias adcvs   'cvs update | grep ^\? | cut -d " " -f 2 | xargs cvs add'

setenv MANPATH /usr/man:/usr/share/man:/usr/local/bin:/usr/lib/perl5/man
setenv CVSEDITOR  "/usr/local/bin/xemacs -nw"
setenv LS_COLORS "di=34;1:ln=36;1"
#setenv LANG jp_JP.UTF-8

if ($?prompt) then
    # An interactive shell -- set some stuff up
    set filec
    set prompt = '[%B%m%b] %B%~%b%# '
