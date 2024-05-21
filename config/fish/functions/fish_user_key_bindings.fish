function fish_user_key_bindings
    fish_vi_key_bindings
    bind --preset -M visual -m default v end-selection repaint-mode

    fzf_key_bindings
end
