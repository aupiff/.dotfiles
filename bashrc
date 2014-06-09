
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias chro='chromium'
alias open='evince'
alias qmake='qmake-qt4'
alias hscolor='HsColour'
alias mntbkup='sudo mount -o gid=users,fmask=022,dmask=022 /dev/sdb1 /mnt/seagatedrive'
alias umntbkup='sudo umount /mnt/seagatedrive/'
HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoreboth
LAST_STATUS='$(echo $?)'
SCALA_HOME=/usr/local/share/scala
export PS1='$(eval "echo $LAST_STATUS")|\u@\W \$ '
export TERM=screen-256color
PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
PATH=/home/rib/.cabal/bin:$PATH
PATH=$PATH:/home/rib/bin/
PATH=$PATH:$SCALA_HOME/bin
export TZ='America/Los_Angeles'
export LD_LIBRARY_PATH=/home/rib/3-tools/venvault/p2/lib/python2.7/site-packages/PySide-1.2.1-py2.7-linux-x86_64.egg/PySide
export PATH
export SURFRAW_text_browser=w3m
export SCALA_HOME
