set fish_greeting ""
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

# if type -q brew
#     echo "eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)" >>~/.config/fish/config.fish
# end
#
# if type -q micromamba
#     set -gx MAMBA_EXE /usr/bin/micromamba
#     set -gx MAMBA_ROOT_PREFIX "/home/natholdallas/.local/share/mamba"
#     $MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# end

if type -q starship
    starship init fish | source
end

if type -q zoxide
    zoxide init fish | source
end

if type -q atuin
    atuin init fish --disable-up-arrow | source
end
