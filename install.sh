#!/usr/bin/bash

config="${XDG_CONFIG_HOME:-$HOME/.config}"
local="${XDG_DATA_HOME:-$HOME/.local}"
ssh="${SSH_HOME:-$HOME/.ssh}"
backup="${DOTFILES_BACKUP:-$local/share/dotfiles-backup}"

# Make dirs
if [[ ! -d $ssh ]]; then
  mkdir -p "$ssh"
fi
if [[ ! -d $config ]]; then
  mkdir -p "$config"
fi
if [[ ! -d $local ]]; then
  mkdir -p "$local"
  mkdir -p "$local/bin"
  mkdir -p "$local/opt"
  mkdir -p "$local/share"
  mkdir -p "$local/state"
  mkdir -p "$local/share/gnupg"
fi

# Backup
if [ "$1" = "--backup" ]; then
  if [[ ! -d $backup ]]; then
    mkdir -p "$backup/config" "$backup/local/bin" "$backup/local/share" "$backup/local/state"
  elif [[ ! -z "$(ls -A "$backup")" ]]; then
    rm -rf "${backup:?}/*"
  fi
  cp -rf "$config/Code" "$backup/config"
  cp -rf "$config/JetBrains" "$backup/config"
  cp -rf "$config/Kvantum" "$backup/config"
  cp -rf "$config/MangoHud" "$backup/config"
  cp -rf "$config/atuin" "$backup/config"
  cp -rf "$config/fastfetch" "$backup/config"
  cp -rf "$config/fcitx5" "$backup/config"
  cp -rf "$config/fish" "$backup/config"
  cp -rf "$config/fontconfig" "$backup/config"
  cp -rf "$config/kitty" "$backup/config"
  cp -rf "$config/maven" "$backup/config"
  cp -rf "$config/mpv" "$backup/config"
  cp -rf "$config/neovide" "$backup/config"
  cp -rf "$config/npm" "$backup/config"
  cp -rf "$config/nvim" "$backup/config"
  cp -rf "$config/wezterm" "$backup/config"
  cp -rf "$config/yazi" "$backup/config"
  cp -rf "$config/starship.toml" "$backup/config"
  cp -rf "$local/bin" "$backup/local/bin"
  cp -rf "$local/share/applications" "$backup/local/share/applications"
  cp -rf "$local/share/fonts" "$backup/local/share/fonts"
  echo "backup folder in $backup"
fi

# Copy
cp -rf src/ssh/* "$ssh"
cp -rf src/config/* "$config"
cp -rf src/local/* "$local"

# Fixes
rm -f "$config/yazi/keymap.toml-*"
rm -f "$config/yazi/yazi.toml-*"

echo "successfully"
