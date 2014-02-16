#!/bin/bash
#
#    tmux_shared.sh
#    =========
#
#    Shared TMUX sessions from (http://www.howtoforge.com/sharing-terminal-sessions-with-tmux-and-screen)
#
#    :created: 2013-08-23 19:12:29 +0000
#    :copyright: (c) 2013, Lambda Labs, Inc.
#    :license: All Rights Reserved.
#
usage() {
    cat <<EOF
Usage:
    ./`basename $0` {ls|start|attach} session_name
EOF
    exit 1
}
socket_name() {
    echo "session_${1}.sock"
}
case "$1" in
    ls)
        ls /tmp | grep -P "^session_" | sed 's/\.sock$//g'
        ;;
    start)
        if ! [[ $2 ]]; then usage; fi;
        SESSION_NAME=$2
        SOCKET_NAME=`socket_name $SESSION_NAME`
        touch /tmp/$SOCKET_NAME
        sudo chmod 777 /tmp/$SOCKET_NAME
        sudo chgrp tmux-shared /tmp/$SOCKET_NAME
        tmux -S /tmp/$SOCKET_NAME new -s $SESSION_NAME
        ;;
    attach)
        if ! [[ $2 ]]; then usage; fi;
        SESSION_NAME=$2
        SOCKET_NAME=`socket_name $SESSION_NAME`
        tmux -S /tmp/$SOCKET_NAME attach -t $SESSION_NAME
        ;;
    *)
        usage;
esac
