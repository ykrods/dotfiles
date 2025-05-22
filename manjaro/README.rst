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
  convert_to_char_type_forward < Muhenkan を削除


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

Dash to Dock
------------------------------

show app を右クリック > 設定

ゴミ箱表示:
ランチャー > ゴミ箱表示 > on

画面外にポインタを移動したら表示されるやつ:
位置とサイズ > インテリジェント表示の設定 > 押し込んで表示 > off


Firefox
===========

* ブックマークツールバー
* openintab


zshrc
==========

`~/.zshrc` に以下を追加

::

  if [[ -e ~/dotfiles/.zshrc  ]]; then
    source ~/dotfiles/.zshrc
  fi

Gnome Terminal
=================

* gnome-console はショートカットの変更方法が不明
* 設定 > ショートカット > 拡大,縮小 を無効化

Terminal
==========

::

  # pacman のミラー変更
  $ sudo pacman-mirrors --country Japan --timeout 5
  $ sudo pacman -Syyu
  $ sudo pacman -S emacs tmux xsel gnome-terminal ripgrep nodejs npm jq chromium

  $ git clone git@github.com:ykrods/dotfiles.git
  $ git clone git@github.com:ykrods/dockerfiles.git
  $ git clone git@github.com:ykrods/.emacs.d

  $ cd dotfiles
  $ ln -s .tmux.conf ~/
  $ ln -s .agignore ~/

  $ sudo pacman -S podman podman-compose podman-docker

  # memo: multipass が snap しかなさそうなので snap を利用する
  #       (AUR (yay) や flatpak については必要になってから検討する
  $ sudo pacman -S snapd
  $ sudo systemctl enable --now apparmor
  $ sudo systemctl enable --now snapd.apparmor
  $ sudo systemctl enable --now snapd.socket
  $ sudo systemctl status snapd

  $ sudo snap install multipass


OneDrive
==========

::

  mkdir ~/OneDrive
  ln -s ~/OneDrive ~/storage

  cd dockerfiles/onedrive
  emacs -nw .env
  docker-compose run --rm --service-ports onedrive # Authorization
  docker-compose up -d
