==================
Android 関連
==================

AndroidStudio
===============

::

  $ cd ~/.local
  $ tar xf ~/Downloads/android-studio-2022.1.1.20-linux.tar.gz

  $ # 複数バージョン使い分けたりするのでパッケージは使わない
  $ # pamac install flatpak
  $ # flatpak install flathub com.google.AndroidStudio


Flutter
===============

::

  cd ~/.local
  tar xf ~/Downloads/flutter_linux_3.7.0-stable.tar.xz
  ln -s ~/.local/flutter/bin/dart ~/.local/bin/dart
  ln -s ~/.local/flutter/bin/flutter ~/.local/bin/flutter
  flutter config --android-studio-dir=~/.local/android-studio

  # Android Studio を開く > Tools > SDK Manager > SDK Tools > Android SDK Command-line Tools (latest)

  # see: https://github.com/flutter/flutter/issues/118502
  cd ~/.local/android-studio
  ln -s jbr jre

  flutter doctor
  flutter doctor --android-licenses

  flutter emulators
  flutter emulator --launch Pixel_3a_API_31
  flutter run

- https://developer.android.com/studio/install?hl=ja
- https://docs.flutter.dev/get-started/install/linux#android-setup
