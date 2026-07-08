read -rp "Install Code Editor (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S visual-studio-code-bin
fi

read -rp "Install Mr.Music (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S spotify spicetify-cli spicetify-marketplace-bin
fi

read -rp "Install Hedonism P2P (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S easytier-bin
fi

read -rp "Install Proxy (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S dae-avx2-bin
fi

read -rp "Install Browser (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S google-chrome zen-browser-bin
fi

read -rp "Install Social Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S linuxqq-appimage telegram-desktop wechat-universal-bwrap
fi

read -rp "Install Downgrade (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S downgrade
fi

read -rp "Install Devlopment Kit (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S bun-bin micromamba-bin aspnet-runtime-bin wechat-devtools-bin dotnet-runtime-bin beekeeper-studio-bin tiny-rdm-bin
fi

read -rp "Install Office (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S onlyoffice-bin ocrmypdf xmind
fi

read -rp "Install Causal Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S edex-ui-bin cowsay sl lolcat nyancat cmatrix asciiquarium
fi

read -rp "Install Crawler Tools (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S gallery-dl youtube-dl yt-dlp
fi

read -rp "Install Useful Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S numbat-bin envycontrol ventoy-bin icoextract
fi

read -rp "Install Gaming Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S uuplugin-bin vkbasalt-cli xmcl-launcher nbtexplorer proton-ge-custom-bin steam
fi

read -rp "Install XDG Fix (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S xdg-ninja
fi

read -rp "Install Appearance Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S bibata-cursor-theme-bin
fi

read -rp "Install Fonts (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S ttf-annotation-mono ttf-ligaconsolas-nerd-font ttf-monaco ttf-pingfang-git ttf-firacode-nerd otf-codenewroman-nerd otf-comicshanns-nerd
fi

read -rp "Install Android Emulator (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S waydroid waydroid-helper
fi

read -rp "Install Obs (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  paru -S obs-studio obs-pipewire-audio-capture-bin
fi
