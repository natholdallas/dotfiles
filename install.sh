# user folder
config=~/.config
local=~/.local

# backup folder
backup=$local/share/dotfiles-backup
backup_config=$backup/config
backup_local=$backup/local

# Make dirs

if [[ ! -d $backup ]]; then
  mkdir $backup
  mkdir $backup_config
  mkdir $backup_local
  mkdir $backup_local/bin
  mkdir $backup_local/share
elif [[ ! -z "$(ls -A $backup)" ]]; then
  rm -r $backup/config/*
  # rm -r $backup/local/share/*
  # rm -r $backup/local/bin/*
fi

# Backup

/bin/mv -f "$config/MangoHud" $backup_config
/bin/mv -f "$config/fastfetch" $backup_config
/bin/mv -f "$config/fcitx5" $backup_config
/bin/mv -f "$config/fish" $backup_config
/bin/mv -f "$config/fontconfig" $backup_config
/bin/mv -f "$config/git" $backup_config
/bin/mv -f "$config/kitty" $backup_config
/bin/mv -f "$config/npm" $backup_config
/bin/mv -f "$config/nvim" $backup_config
/bin/mv -f "$config/wezterm" $backup_config
/bin/mv -f "$config/yazi" $backup_config
/bin/mv -f "$config/mimeapps.list" $backup_config
/bin/mv -f "$config/starship.toml" $backup_config

# /bin/mv -f "$local_share/applications" $backup_local_share
# /bin/mv -f "$local_bin" $backup_local_bin

# Copy

/bin/cp -rf src/config/* $config
/bin/cp -rf src/applications/* $local/share/applications

echo "Backup folder in $backup"
