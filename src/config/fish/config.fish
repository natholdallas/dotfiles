set fish_greeting ""
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

command -q starship && starship init fish | source
zoxide init fish | source

[ -f ~/dotfiles/user/fish/config.fish ]; and . ~/dotfiles/user/fish/config.fish; or true
