read -rp "Install Important Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S kitty npm pnpm go rustup yazi fastfetch mpv wezterm mangohud openssh sudo-rs kvantum zip unzip rar
fi

read -rp "Install Yazi Optional Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick xclip wl-clipboard chafa git
fi

read -rp "Install Neovim (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S neovide neovim
fi

read -rp "Install The Packages Related To Fish (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S eza fish starship zoxide
fi

read -rp "Install Fcitx (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-pinyin-zhwiki fcitx5-qt
fi

read -rp "Install OpenJDK (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S jdk-openjdk jdk17-openjdk jdk21-openjdk
fi

read -rp "Install Python Package (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S uv
fi

read -rp "Install Top (y/N):" confirm
if [[ "$confirm" =~ ^[yY](es)?$ ]]; then
  sudo pacman -S btop htop nvtop
fi
