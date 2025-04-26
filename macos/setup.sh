#!/bin/sh

for file in .tmux.conf .agignore
do
    ln -is ~/dotfiles/$file ~/$file
done

brew install $(cat ~/dotfiles/brew.txt)

mkdir -p ~/{.ssh,proj}

git config --global user.name ykrods
git config --global user.email 890082+ykrods@users.noreply.github.com

# git config -f ~/.gitconfig-proj user.name =
# git config -f ~/.gitconfig-proj user.email =
# git config --global includeIf."gitdir:~/proj".path "~/.gitconfig-proj"
