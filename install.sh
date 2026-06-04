#!/usr/bin/bash

cfg="${XDG_CONFIG_HOME:-$HOME/.config}"
loc="${XDG_DATA_HOME:-$HOME/.local}"
ssh="${SSH_HOME:-$HOME/.ssh}"
backup="${DOTFILES_BACKUP:-$loc/share/dotfiles-backup}"

# Make dirs
if [[ ! -d $ssh ]]; then
  mkdir -p "$ssh"
fi
if [[ ! -d $cfg ]]; then
  mkdir -p "$cfg"
fi
if [[ ! -d $loc ]]; then
  mkdir -p "$loc"
  mkdir -p "$loc/bin"
  mkdir -p "$loc/opt"
  mkdir -p "$loc/share"
  mkdir -p "$loc/state"
  mkdir -p "$loc/share/gnupg"
fi

# Backup
if [ "$1" = "--backup" ]; then
  if [[ ! -d $backup ]]; then
    mkdir -p "$backup/config" "$backup/local/bin" "$backup/local/share" "$backup/local/state"
  elif [[ ! -z "$(ls -A "$backup")" ]]; then
    rm -rf "${backup:?}/*"
  fi
  cp -rf "$cfg/Code" "$backup/config"
  cp -rf "$cfg/JetBrains" "$backup/config"
  cp -rf "$cfg/Kvantum" "$backup/config"
  cp -rf "$cfg/MangoHud" "$backup/config"
  cp -rf "$cfg/atuin" "$backup/config"
  cp -rf "$cfg/fastfetch" "$backup/config"
  cp -rf "$cfg/fcitx5" "$backup/config"
  cp -rf "$cfg/fish" "$backup/config"
  cp -rf "$cfg/fontconfig" "$backup/config"
  cp -rf "$cfg/kitty" "$backup/config"
  cp -rf "$cfg/maven" "$backup/config"
  cp -rf "$cfg/mpv" "$backup/config"
  cp -rf "$cfg/neovide" "$backup/config"
  cp -rf "$cfg/npm" "$backup/config"
  cp -rf "$cfg/nvim" "$backup/config"
  cp -rf "$cfg/wezterm" "$backup/config"
  cp -rf "$cfg/yazi" "$backup/config"
  cp -rf "$cfg/starship.toml" "$backup/config"
  cp -rf "$loc/bin" "$backup/local/bin"
  cp -rf "$loc/share/applications" "$backup/local/share/applications"
  cp -rf "$loc/share/fonts" "$backup/local/share/fonts"
  echo "backup folder in $backup"
fi

# Copy
cp -rf src/ssh/* "$ssh"
cp -rf src/config/* "$cfg"
cp -rf src/local/* "$loc"

# Fixes
rm -f "$cfg/yazi/keymap.toml-*"
rm -f "$cfg/yazi/yazi.toml-*"

echo "successfully"
