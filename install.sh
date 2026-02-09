#!/usr/bin/bash

config=~/.config
local=~/.local
ssh=~/.ssh
backup="$local/share/dotfiles-backup"
bconfig="$backup/config"
blocal=$backup/local

# Make dirs
if [[ ! -d $backup ]]; then
  mkdir -p "$backup/config" "$blocal/bin" "$blocal/share"
elif [[ ! -z "$(ls -A $backup)" ]]; then
  rm -rf $backup/config/*
fi
if [[ ! -d $ssh ]]; then
  mkdir -p $ssh
fi
if [[ ! -d $config ]]; then
  mkdir -p $config
fi

if [[ ! -d $local ]]; then
  mkdir -p $local
  mkdir -p $local/bin
  mkdir -p $local/share
  mkdir -p $local/state
  mkdir -p $local/share/gnupg
fi

# Backup
if [ "$1" = "--backup" ]; then
  /bin/cp -rf "$config/Code" $bconfig
  /bin/cp -rf "$config/JetBrains" $bconfig
  /bin/cp -rf "$config/Kvantum" $bconfig
  /bin/cp -rf "$config/MangoHud" $bconfig
  /bin/cp -rf "$config/fastfetch" $bconfig
  /bin/cp -rf "$config/fcitx5" $bconfig
  /bin/cp -rf "$config/fish" $bconfig
  /bin/cp -rf "$config/fontconfig" $bconfig
  /bin/cp -rf "$config/kitty" $bconfig
  /bin/cp -rf "$config/maven" $bconfig
  /bin/cp -rf "$config/mpv" $bconfig
  /bin/cp -rf "$config/neovide" $bconfig
  /bin/cp -rf "$config/npm" $bconfig
  /bin/cp -rf "$config/nvim" $bconfig
  /bin/cp -rf "$config/wezterm" $bconfig
  /bin/cp -rf "$config/yazi" $bconfig
  /bin/cp -rf "$config/starship.toml" $bconfig
  /bin/cp -rf "$local/bin" "$blocal/bin"
  /bin/cp -rf "$local/share/applications" "$blocal/share/applications"
  /bin/cp -rf "$local/share/fonts" "$blocal/share/fonts"
  echo "backup folder in $backup"
fi

# Copy
/bin/cp -rf src/ssh/* $ssh
/bin/cp -rf src/config/* $config
/bin/cp -rf src/local/* $local

# Fixes
rm -f $config/yazi/keymap.toml-*
rm -f $config/yazi/yazi.toml-*

echo "successfully"
