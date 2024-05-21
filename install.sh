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

/bin/mv -f $bash $fastfetch $fish $hypr $nvim $starship $share
/bin/cp -rf ./config/* $config

echo "Move your origin files to $share"
echo "Copy config files to $config"

