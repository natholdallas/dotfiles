if type -q exa
    alias ls='exa --icons --sort type'
    alias ll='exa -Alh --icons --sort type'
    alias la='exa -Alh --icons --sort type'
    alias lt='exa -lTah --icons --sort type'
    alias lsa='exa -A --icons --sort type'
else if type -q eza
    alias ls='eza --icons --sort type'
    alias ll='eza -Alh --icons --sort type'
    alias la='eza -Alh --icons --sort type'
    alias lt='eza -lTah --icons --sort type'
    alias lsa='eza -A --icons --sort type'
else
    alias ls='ls --color=auto'
    alias lsa='ls -A'
    alias ll='ls -Alh'
    alias la='ls -Alh'
    alias lt='tree -pCsh'
end

if type -q bat
    alias cat='bat -pp'
    alias ccat='/usr/bin/cat'
end

if type -q tmux
    alias tt='tmux attach || tmux'
    alias tn='tmux new'
    alias tl='tmux ls'
    alias ta='tmux attach -t'
    alias tk='tmux kill-session -t'
end

if type -q sudo-rs
    alias sudo='sudo-rs'
end

if type -q fd
    alias fd="fd -HIg"
end

if type -q trash
    alias trash-screenshot="trash $HOME/Pictures/Screenshots/*"
    alias trash-cache="trash $XDG_CACHE_HOME/*"
end

if type -q yarn
    alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
end

if type -q adb
    alias adb="HOME=$XDG_DATA_HOME/android adb"
end

if type -q wget
    alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
end

if type -q mvn
    alias mvn="mvn -gs "$XDG_CONFIG_HOME"/maven/settings.xml"
end

if type -q curl
    alias whatsip="curl ipinfo.io/ip"
end

if type -q rm
    alias rm="rm -vr"
end

if type -q nvidia-settings
    alias nvidia-settings="nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings"
end
