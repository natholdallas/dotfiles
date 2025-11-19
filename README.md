# dotfiles

Backup configuration

## Package Required

```bash
paru -S zip unzip fish neovide neovim zoxide yazi mpv fastfetch starship kitty git wezterm npm mangohud fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-pinyin-zhwiki fcitx5-qt wget tmux exa bat sudo-rs fd trash-cli
```

1. wezterm
2. zip
3. unzip
4. fish
5. neovide
6. neovim
7. zoxide
8. yazi
9. mpv

## Installation

| name       | description                                          |
| ---------- | ---------------------------------------------------- |
| install.sh | Backup origin config then copy dotfiles to ~/.config |

## Yazi

available themes

- flexoki-dark
- vscode-dark-modern
- catppuccin-mocha

after installed yazi, you need run yazi-sync to sync ya pkg

```bash
yazi-sync
```

## Prepend path

| name      | description                                              |
| --------- | -------------------------------------------------------- |
| fakehome  | can create fakehome environment, example: fakehome steam |
| steam     | steam with steamfix                                      |
| steamfix  | none                                                     |
| yazi-sync | sync yazi package, some plugin and themes                |
