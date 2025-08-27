===============
dotfiles
===============

windows/macos/manjaro

npm
========

.. code-block::

  $ npm prefix --location global
  $ mkdir ~/.npm-global
  $ ln -s ~/dotfiles/.npmrc ~/.npmrc
  $ npm install -g $(cat ~/dotfiles/node-packages.txt)
