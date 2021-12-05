===============
dotfiles
===============

wsl
======

1. Ubuntu の .bashrc に以下を追加

   ::

     export PATH=/mnt/c/Users/${WIN_USER}/.bin:$PATH
     if [ -f ~/dotfiles/.bashrc ]; then
       . ~/dotfiles/.bashrc
     fi

2. C:\Users\WIN_USER\.bin に win32yank.exe を配置

   * ( ゲスト側に配置すると動作が遅くなるため、windows側に配置
