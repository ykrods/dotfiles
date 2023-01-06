==========
manjaro
==========

`manjaro <https://manjaro.org/>`_

* 使用感が mac に近い Gnome Edition をインストール


日本語入力
=============

Manjaro Hello > Extended language Support > Manjaro Asian Input Support Ibus

::

  sudo packman -S ibus-anthy

設定 > キーボード > 入力ソース > 日本語（Anthy）を追加して「日本語」を削除

デスクトップ右上の「あ」 > 設定 - Anthy > キー割り当て

::

  on_off < Ctrl+j を削除
  latin_mode < Muhenkan
  hiragana_mode < Henkan


キーボード
============

gnome tweaks > キーボードとマウス

* Emacs入力
* アクティビティ画面のショートカット > 追加のレイアウトオプション > Caps Lock behavior > Make Caps Lock an addtional Ctrl
* MEMO: Gnome Extensions という管理ツールを使う方がいい？らしいが、FLATHUB ?


デスクトップ
==============

::

  # Desktop 等のフォルダ名を英語にする
  $ LANG=C
  $ xdg-user-dirs-gtk-update

* ref. https://qiita.com/take5249/items/13ada73bbd01ee12a2c3


デスクトップフォルダのアイコン表示
-------------------------------------

gnome-layout-switcher > Settings > Desktop icons


Firefox
===========

* ブックマークツールバー
* openintab


bashrc
==========

`~/.bashrc` に以下を追加

::

  if [ -f ~/dotfiles/.bashrc ]; then
    . ~/dotfiles/.bashrc
  fi


Terminal
==========

::

  # pacman のミラー変更
  $ sudo pacman-mirrors --country Japan --timeout 5
  $ sudo pacman -Syyu

  $ sudo pacman -S emacs tmux xsel the_silver_searcher nodejs npm keybase-gui

  $ git clone git@github.com:ykrods/dotfiles.git
  $ git clone git@github.com:ykrods/dockerfiles.git
  $ git clone git@github.com:ykrods/.emacs.d

  $ cd dotfiles
  $ ln -s .tmux.conf ~/
  $ ln -s .agignore ~/

  $ sudo pacman -S docker docker-compose
  $ sudo groupadd docker
  $ sudo usermod -aG docker $USER
  $ sudo systemctl enable docker
  $ sudo systemctl start docker

  # memo: ポリシーとして AUR (yay) or snap or flatpak いずれか選んで使うのが
  #       良さそうだがとりあえず試しで snap と flatpak を使う
  #       ( multipass が snap しかなさそう
  $ sudo pacman -S snapd
  $ sudo systemctl enable --now apparmor
  $ sudo systemctl enable --now snapd.apparmor
  $ sudo systemctl enable --now snapd.socket
  $ sudo systemctl status snapd

  $ sudo snap install multipass
  $ pamac install flatpak

  $ flatpak install flathub com.google.AndroidStudio


OneDrive
==========

::

  mkdir ~/OneDrive
  ln -s ~/OneDrive ~/storage

  cd dockerfiles/onedrive
  emacs -nw .env
  docker-compose run --rm --service-ports onedrive # Authorization
  docker-compose up -d
