#!/bin/sh

if ! grep '^\. ~/dotfiles/\.bashrc$' ~/.bashrc >/dev/null 2>&1; then
    echo '. ~/dotfiles/.bashrc' >> ~/.bashrc
fi

for file in .tmux.conf .agignore
do
    ln -is ~/dotfiles/$file ~/$file
done
