#!/usr/bin/bash

# user folder
config=~/.config
local=~/.local

# backup folder
ssh=~/.ssh
backup="$local/share/dotfiles-backup"
backup_config="$backup/config"
# backup_local=$backup/local

# Make dirs
if [[ ! -d $backup ]]; then
  mkdir -p "$backup/config" "$backup/local/bin" "$backup/local/share"
elif [[ ! -z "$(ls -A $backup)" ]]; then
  rm -rf $backup/config/*
fi

if [[ ! -d $local ]]; then
  mkdir -p $local
  mkdir -p $local/bin
  mkdir -p $local/share
  mkdir -p $local/state
fi

# Backup
if [ "$1" = "--backup" ]; then
  /bin/cp -rf "$config/Code" $backup_config
  /bin/cp -rf "$config/JetBrains" $backup_config
  /bin/cp -rf "$config/Kvantum" $backup_config
  /bin/cp -rf "$config/MangoHud" $backup_config
  /bin/cp -rf "$config/fastfetch" $backup_config
  /bin/cp -rf "$config/fcitx5" $backup_config
  /bin/cp -rf "$config/fish" $backup_config
  /bin/cp -rf "$config/fontconfig" $backup_config
  /bin/cp -rf "$config/kitty" $backup_config
  /bin/cp -rf "$config/maven" $backup_config
  /bin/cp -rf "$config/mpv" $backup_config
  /bin/cp -rf "$config/neovide" $backup_config
  /bin/cp -rf "$config/npm" $backup_config
  /bin/cp -rf "$config/nvim" $backup_config
  /bin/cp -rf "$config/wezterm" $backup_config
  /bin/cp -rf "$config/yazi" $backup_config
  /bin/cp -rf "$config/starship.toml" $backup_config
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
