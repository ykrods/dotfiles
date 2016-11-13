#!/bin/bash

# memo) reattach-to-user-namespace は tmux で pbcopy/pbpaste するのに必要
function check (){
    hash reattach-to-user-namespace > /dev/null 2>&1
}

case $1 in
    "check" )
        check && echo "OK"
        ;;
    "default-command" )
        if check ;then
            reattach-to-user-namespace -l ${SHELL}
        else
            ${SHELL}
        fi
        ;;
    "copy" )
        check || exit 1
        tmux save-buffer - | reattach-to-user-namespace pbcopy
        tmux display-message "copying: $(reattach-to-user-namespace pbpaste | head -1)"
        ;;
    "paste")
        check || exit 1
        reattach-to-user-namespace pbpaste | tmux load-buffer - \
            && tmux paste-buffer
        ;;
esac
