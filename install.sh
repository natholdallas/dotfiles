#!/usr/bin/bash

cfg="${XDG_CONFIG_HOME:-$HOME/.config}"
loc="$HOME/.local"
ssh="${SSH_HOME:-$HOME/.ssh}"
backup="${DOTFILES_BACKUP:-$loc/share/dotfiles-backup}"

# Ensure directories
mkdir -p "$ssh" "$cfg" \
  "$loc"/{bin,opt,share,state,share/gnupg}

config_dirs=(
  Code JetBrains Kvantum MangoHud atuin fastfetch
  fcitx5 fish fontconfig kitty maven mpv neovide
  npm nvim wezterm yazi
)
config_files=(starship.toml)
local_dirs=(bin "share/applications" "share/fonts")

if [ "$1" = "--backup" ]; then
  mkdir -p "$backup"/{config,local/{bin,share,state}}
  for d in "${config_dirs[@]}"; do
    cp -rf "$cfg/$d" "$backup/config/"
  done
  for f in "${config_files[@]}"; do
    cp -rf "$cfg/$f" "$backup/config/"
  done
  for d in "${local_dirs[@]}"; do
    cp -rf "$loc/$d" "$backup/local/$d"
  done
  echo "backup folder in $backup"
fi

if [ "$1" = "--coverage" ]; then
  echo "coverage configuration"
  for d in "${config_dirs[@]}"; do
    rm -rf "${cfg:?}/$d"
  done
  for f in "${config_files[@]}"; do
    rm -rf "${cfg:?}/$f"
  done
  for d in "${local_dirs[@]}"; do
    rm -rf "${loc:?}/$d"
  done
fi

# Copy
cp -rf src/ssh/* "$ssh"
cp -rf src/config/* "$cfg"
cp -rf src/local/* "$loc"

# Fixes
rm -f "${cfg:?}/yazi/keymap.toml-*" "${cfg:?}/yazi/yazi.toml-*"

echo "successfully"
