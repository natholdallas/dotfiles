if command -q exa
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

if command -q bat
    alias cat='bat -pp'
    alias ccat='/usr/bin/cat'
end

if command -q tmux
    alias tt='tmux attach || tmux'
    alias tn='tmux new'
    alias tl='tmux ls'
    alias ta='tmux attach -t'
    alias tk='tmux kill-session -t'
end

alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
