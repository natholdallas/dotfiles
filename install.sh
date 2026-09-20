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
  npm nvim opencode wezterm yazi
)
config_files=(starship.toml wgetrc)
local_dirs=(bin "share/applications" "share/fonts")

server_config_dirs=(atuin fastfetch fish npm yazi)
server_config_files=(starship.toml wgetrc)
server_local_dirs=(bin)

usage() {
  cat <<'EOF'
Usage: install.sh [OPTION]

Options:
  --backup     Backup current configuration to $backup
  --server     Install server configuration only
  --coverage   Remove existing configuration before installing
  --help, -h   Show this help message

Without options, installs configuration normally.
EOF
}

case "${1:-}" in
  --backup)
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
    ;;
  --server)
    for d in "${server_config_dirs[@]}"; do
      cp -rf "src/config/$d" "$cfg/"
    done
    for f in "${server_config_files[@]}"; do
      cp -rf "src/config/$f" "$cfg/"
    done
    for d in "${server_local_dirs[@]}"; do
      cp -rf "src/local/$d" "$loc/"
    done
    cp -rf src/ssh/* "$ssh"
    rm -f "${cfg:?}/yazi/keymap.toml-*" "${cfg:?}/yazi/yazi.toml-*"
    echo "successfully"
    exit 0
    ;;
  --coverage)
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
    ;;
  --help|-h)
    usage
    exit 0
    ;;
  "")
    ;;
  *)
    echo "Error: unknown option '$1'" >&2
    usage
    exit 1
    ;;
esac

# Copy
cp -rf src/ssh/* "$ssh"
cp -rf src/config/* "$cfg"
cp -rf src/local/* "$loc"

# Fixes
rm -f "${cfg:?}/yazi/keymap.toml-*" "${cfg:?}/yazi/yazi.toml-*"

echo "successfully"