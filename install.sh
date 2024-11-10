config=~/.config
local=~/.local
share=~/.local/share
nshare=$share/ndotfiles

# Make dirs

if [[ ! -d $nshare ]]; then
  mkdir $nshare
elif [[ ! -z "$(ls -A $nshare)" ]]; then
  rm -r ${nshare/*}
fi

# Backup

fastfetch=$config/fastfetch
fcitx5=$config/fcitx5
fish=$config/fish
fontconfig=$config/fontconfig
kitty=$config/kitty
nvim=$config/nvim
wezterm=$config/wezterm
yazi=$config/yazi
starship=$config/starship.toml

if [[ -d $fastfetch ]]; then
  /bin/mv -f $fastfetch $nshare
fi

if [[ -d $fcitx5 ]]; then
  /bin/mv -f $fcitx5 $nshare
fi

if [[ -d $fish ]]; then
  /bin/mv -f $fish $nshare
fi

if [[ -d $fontconfig ]]; then
  /bin/mv -f $fontconfig $nshare
fi

if [[ -d $kitty ]]; then
  /bin/mv -f $kitty $nshare
fi

if [[ -d $nvim ]]; then
  /bin/mv -f $nvim $nshare
fi

if [[ -f $starship ]]; then
  /bin/mv -f $starship $nshare
fi

if [[ -d $wezterm ]]; then
  /bin/mv -f $wezterm $nshare
fi

if [[ -d $yazi ]]; then
  /bin/mv -f $yazi $nshare
fi

# Copy

/bin/cp -rf config/* $config
/bin/cp -rf local/* $local

echo "Move origin configuration to $nshare"
