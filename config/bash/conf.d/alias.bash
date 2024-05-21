if command -v exa >/dev/null; then
    alias ls='exa --icons'
    alias lsa='exa -A --icons'
    alias ll='exa -Alh --icons'
    alias la='exa -Alh --icons'
    alias lt='exa -lTah --icons'
else
    alias ls='ls --color=auto'
    alias lsa='ls -A'
    alias ll='ls -Alh'
    alias la='ls -Alh'
    alias lt='tree -pCsh'
fi

if command -v bat >/dev/null; then
    alias cat='bat -pp'
    alias ccat='/usr/bin/cat'
fi

if command -v tmux >/dev/null; then
    alias tt='tmux attach || tmux'
    alias tn='tmux new'
    alias tl='tmux ls'
    alias ta='tmux attach -t'
    alias tk='tmux kill-session -t'
fi

alias va='source .venv/bin/activate'
alias vd='deactivate'
alias color_test='curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python'
