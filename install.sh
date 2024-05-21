config=~/.config
share=~/.local/share/ndotfiles

bash=$config/bash
fastfetch=$config/fastfetch
fish=$config/fish
hypr=$config/hypr
nvim=$config/nvim
starship=$config/starship.toml

if [[ -d $share ]]; then
  rm -r $share
  echo "Delete folder $share"
fi

mkdir $share
echo "Make directory $share"

# Backup

if [[ -d $bash ]]; then
  /bin/mv -f $bash $share
fi

if [[ -d $fastfetch ]]; then
  /bin/mv -f $fastfetch $share
fi

if [[ -d $fish ]]; then
  /bin/mv -f $fish $share
fi

if [[ -d $hypr ]]; then
  /bin/mv -f $hypr $share
fi

if [[ -f $starship ]]; then
  /bin/mv -f $starship $share
fi

# Copy

/bin/cp -rf ./config/* $config

echo "Move your origin files to $share"
echo "Copy config files to $config"

