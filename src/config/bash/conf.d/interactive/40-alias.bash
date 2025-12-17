alias clearbuffer='printf '\''\033[2J\033[3J\033[1;1H'\'

if command -v fastfetch >/dev/null; then
    alias ff='fastfetch'
fi

if command -v exa >/dev/null; then
    alias __ls='exa --icons -s=type'
    alias __ll='__ls -lh'
    alias lt='ls -lTah'
else
    alias __ls='ls --color=auto -s=type'
    alias __ll='__ls -lh'
    alias lt='tree -pCsh'
fi
alias ls='__ls -A'
alias lsa='__ls -a'
alias lsh=__ls
alias ll='__ll -A'
alias lla='__ll -a'
alias llh=__ll

if command -v bat >/dev/null; then
    alias batp='bat --paging=always'
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

if command -v dust >/dev/null; then
    alias du='dust -r -d1'
else
    alias du='du -d1'
fi

if command -v duf >/dev/null; then
    alias df='duf --only=local,fuse'
fi

alias color_test='curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python'

alias grep='grep --color=auto'
