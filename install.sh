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

bash=$config/bash
fastfetch=$config/fastfetch
fish=$config/fish
kitty=$config/kitty
nvim=$config/nvim
starship=$config/starship.toml

if [[ -d $bash ]]; then
  /bin/mv -f $bash $nshare
fi

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

# Copy

/bin/cp -rf config/* $config

echo "Move origin configuration to $nshare"
