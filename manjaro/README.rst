manjaro gnome をインストール

Manjaro Hello > Extended language Support > Manjaro Asian Input Support Ibus

::

  sudo packman -S ibus-anthy

設定 > キーボード > 入力ソース > 日本語（Anthy）を追加して「日本語」を削除

デスクトップ右上の「あ」 > 設定 - Anthy > キー割り当て

::

  latin_mode < Muhenkan
  hiragana_mode < Henkan

gnome tweaks (今は? Gnome Extensions という管理ツールを使う方がいい？らしいが、FLATHUB とは？)
  キーボードとマウス > Emacs入力
                     > アクティビティ画面のショートカット > 追加のレイアウトオプション > Caps Lock behavior > Make Caps Lock an addtional Ctrl


  $ LANG=C
  $ xdg-user-dirs-gtk-update

https://qiita.com/take5249/items/13ada73bbd01ee12a2c3

Firefox の設定
* ブックマークツールバー
*  openintab

gnome-lauout-switcher > Settings > Desktop icons

sudo packman -S emacs tmux xsel the_silver_searcher snapd

$ git clone git@github.com:ykrods/dotfiles.git
$ git clone git@github.com:ykrods/dockerfiles.git
$ git clone git@github.com:ykrods/.emacs.d

$ cd dotfiles
$ ln -s .tmux.conf ~/
$ ln -s .agignore ~/
$ ln -s

$ # sudo pacman -S yay # iran ??
$ sudo pacman -S docker docker-compose
$ sudo groupadd docker
$ sudo usermod -aG docker $USER
$ sudo systemctl enable docker
$ sudo systemctl start docker

$ sudo systemctl enable --now apparmor
$ sudo systemctl enable --now snapd.apparmor
$ sudo systemctl enable --now snapd.socket
$ sudo systemctl status snapd
$ sudo snap install multipass
$ sudo pacman -S keybase-gui
