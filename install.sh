config=~/.config
local=~/.local
share=~/.local/share
backup=$share/dotfiles-backup

# Make dirs

if [[ ! -d $backup ]]; then
  mkdir $backup
elif [[ ! -z "$(ls -A $backup)" ]]; then
  rm -r $backup/*
fi

# Backup

/bin/mv -f "$config/fastfetch" $backup
/bin/mv -f "$config/fcitx5" $backup
/bin/mv -f "$config/fish" $backup
/bin/mv -f "$config/fontconfig" $backup
/bin/mv -f "$config/git" $backup
/bin/mv -f "$config/kitty" $backup
/bin/mv -f "$config/npm" $backup
/bin/mv -f "$config/nvim" $backup
/bin/mv -f "$config/wezterm" $backup
/bin/mv -f "$config/yazi" $backup
/bin/mv -f "$config/starship.toml" $backup
/bin/mv -f "$config/mimeapps.list" $backup

# Copy

/bin/cp -rf config/* $config
/bin/cp -rf local/* $local

echo "Move origin configuration to $backup"
