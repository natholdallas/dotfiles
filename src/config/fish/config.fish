set fish_greeting ""
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
set -gx MAMBA_EXE /usr/bin/micromamba
set -gx MAMBA_ROOT_PREFIX "/home/natholdallas/.local/share/mamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

command -q starship && starship init fish | source
zoxide init fish | source

# [ -f ~/dotfiles/user/fish/config.fish ]; and . ~/dotfiles/user/fish/config.fish; or true
