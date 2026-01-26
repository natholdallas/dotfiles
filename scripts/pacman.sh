echo "Install Important Package"
sudo pacman -S kitty npm pnpm go rustup yazi fastfetch mpv wezterm mangohud openssh sudo-rs kvantum zip unzip rar

echo "Install Yazi Optional Package"
sudo pacman -S ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick xclip wl-clipboard chafa git

echo "Install Neovim"
sudo pacman -S neovide neovim

echo "Install The Packages Related To Fish"
sudo pacman -S eza fish starship zoxide

echo "Install Fcitx"
sudo pacman -S fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-pinyin-zhwiki fcitx5-qt

echo "Install OpenJDK"
sudo pacman -S jdk-openjdk jdk17-openjdk jdk21-openjdk

echo "Install Python Package"
sudo pacman -S uv

echo "Install Top"
sudo pacman -S btop htop nvtop
