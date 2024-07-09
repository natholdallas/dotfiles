config=~/.config
share=~/.local/share
nshare=$share/ndotfiles

# Make dirs

if [[ ! -d $nshare ]]; then
  mkdir $nshare
elif [[ ! -z "$(ls -A $nshare)" ]]; then
  rm -r $nshare/*
fi

# Backup

fastfetch=$config/fastfetch
fish=$config/fish
kitty=$config/kitty
wezterm=$config/wezterm
nvim=$config/nvim
yazi=$config/yazi
starship=$config/starship.toml

if [[ -d $fastfetch ]]; then
  /bin/mv -f $fastfetch $nshare
fi

if [[ -d $fish ]]; then
  /bin/mv -f $fish $nshare
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

echo "Move origin configuration to $nshare"
