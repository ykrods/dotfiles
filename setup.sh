#!/bin/sh

cd $HOME/dotfiles

if [[ -f $PWD/.bashrc ]]; then
    ln -is $PWD/.bashrc $HOME
fi

if [[ -f $PWD/.tmux.conf ]]; then
    ln -is $PWD/.tmux.conf $HOME
fi

if [[ -f $PWD/.agignore ]]; then
    ln -is $PWD/.agignore $HOME
fi
