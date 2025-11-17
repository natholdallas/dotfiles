#!/usr/bin/bash

./install.sh

# aur
paru -S zip unzip fish neovide neovim zoxide yazi mpv fastfetch starship kitty git wezterm npm mangohud fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-pinyin-zhwiki fcitx5-qt wget tmux exa bat sudo-rs fd trash-cli

# plugins
ya pkg add yazi-rs/plugins:chmod
ya pkg add yazi-rs/plugins:full-border
ya pkg add Rolv-Apneseth/starship
ya pkg add AnirudhG07/plugins-yazi:copy-file-contents
ya pkg add uhs-robert/recycle-bin

# theme
ya pkg add 956MB/vscode-dark-modern
ya pkg add gosxrgxx/flexoki-dark
ya pkg add yazi-rs/flavors:catppuccin-mocha
