# user folder
config=~/.config
local=~/.local

# backup folder
backup=$local/share/dotfiles-backup
backup_config=$backup/config
# backup_local=$backup/local

# Make dirs

if [[ ! -d $backup ]]; then
  mkdir -p "$backup/config" "$backup/local/bin" "$backup/local/share"
elif [[ ! -z "$(ls -A $backup)" ]]; then
  rm -r $backup/config/*
fi

if [[ ! -d $config ]]; then
  mkdir -p $config
  mkdir -p "$config/yazi"
fi

if [[ ! -d $local ]]; then
  mkdir -p $local
fi

# Backup

/bin/mv -f "$config/MangoHud" $backup_config
/bin/mv -f "$config/fastfetch" $backup_config
/bin/mv -f "$config/fcitx5" $backup_config
/bin/mv -f "$config/fish" $backup_config
/bin/mv -f "$config/fontconfig" $backup_config
/bin/mv -f "$config/git" $backup_config
/bin/mv -f "$config/kitty" $backup_config
/bin/mv -f "$config/mpv" $backup_config
/bin/mv -f "$config/neovide" $backup_config
/bin/mv -f "$config/npm" $backup_config
/bin/mv -f "$config/nvim" $backup_config
/bin/mv -f "$config/wezterm" $backup_config
/bin/mv -f "$config/yazi/init.lua" $backup_config/yazi
/bin/mv -f "$config/yazi/keymap.toml" $backup_config/yazi
/bin/mv -f "$config/yazi/theme.toml" $backup_config/yazi
/bin/mv -f "$config/yazi/yazi.toml" $backup_config/yazi
/bin/mv -f "$config/mimeapps.list" $backup_config
/bin/mv -f "$config/starship.toml" $backup_config

# Copy

/bin/cp -rf src/config/* $config
/bin/cp -rf src/local/* $local

echo "Backup folder in $backup"
