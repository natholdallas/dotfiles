if command -sq exa
    alias ls='exa --icons --sort type'
    alias lsa='exa -A --icons --sort type'
    alias ll='exa -Alh --icons --sort type'
    alias la='exa -Alh --icons --sort type'
    alias lt='exa -lTah --icons --sort type'
else
    alias ls='ls --color=auto'
    alias lsa='ls -A'
    alias ll='ls -Alh'
    alias la='ls -Alh'
    alias lt='tree -pCsh'
end

if command -sq bat
    alias cat='bat -pp'
    alias ccat='/usr/bin/cat'
end

if command -sq tmux
    alias tt='tmux attach || tmux'
    alias tn='tmux new'
    alias tl='tmux ls'
    alias ta='tmux attach -t'
    alias tk='tmux kill-session -t'
end

if command -sq sudo-rs
    alias sudo='sudo-rs'
end

if command -sq fd
    alias fd="fd -HIg"
end

if command -sq trash
    alias trash-screenshot="trash $HOME/Pictures/Screenshots/*"
    alias trash-cache="trash $XDG_CACHE_HOME/*"
    alias trash-useless="trash $HOME/.lemminx $HOME/.pki"
end

if command -sq yarn
    alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
end

if command -sq adb
    alias adb="HOME=$XDG_DATA_HOME/android adb"
end

alias rm="rm -vr"
# alias wget="wget --hsts-file=\"$XDG_DATA_HOME/wget-hsts\""
