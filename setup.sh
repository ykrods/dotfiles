#!/bin/sh

# # Prerequisites
#
# - virtualenv
# - homebrew
#
# # [TIPS] brew on home
# $ mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

if [ ! -f ~/.bash_profile ]; then
   cp ~/dotfiles/.bash_profile ~/.bash_profile
fi

if ! grep '^\. ~/dotfiles/\.bashrc$' ~/.bashrc >/dev/null 2>&1; then
    echo '. ~/dotfiles/.bashrc' >> ~/.bashrc
fi

for file in .tmux.conf .agignore
do
    ln -is ~/dotfiles/$file ~/$file
done

brew install $(cat ~/dotfiles/brew.txt)

virtualenv ~/.venv
~/.venv/bin/pip install -r ~/dotfiles/requirements.txt

mkdir -p ~/{.ssh,proj}
