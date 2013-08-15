# MacPorts Installer addition on 2012-11-19_at_15:07:13: adding an appropriate PATH variable for use with MacPorts.
PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#this is the default cabal install path as far as I know
PATH=/Users/aupiff/.cabal/bin:$PATH
#PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH

PATH=/usr/local/carlson-minot/crosscompilers/bin:$PATH

export PATH=~/bin/:$PATH
export PS1="\W > "
export TERM=screen-256color
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias gpg='gpg2'
alias grep='grep --color=auto'

export PYTHONPATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:$PYTHONPATH
PYTHON_INCLUDE_DIR=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/include/python2.7
PYTHON_LIBRARY=/opt/local/lib/libpython2.7.dylib
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages/
