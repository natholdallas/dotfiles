function has_path
    contains $argv[1] $PATH
end

function append_path
    has_path $argv[1] || set PATH $PATH $argv[1]
end

function prepend_path
    has_path $argv[1] || set PATH $argv[1] $PATH
end

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# XDG FIX
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx PYTHONPYCACHEPREFIX "$XDG_CACHE_HOME/python"
set -gx __GL_SHADER_DISK_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx WECHAT_DATA_DIR "$XDG_DATA_HOME/wechat"
set -gx W3M_DIR "$XDG_STATE_HOME/w3m"
set -gx WGETRC "$XDG_CONFIG_HOME/wgetrc"

set -gx GTK_RC_FILES "$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -gx TS3_CONFIG_DIR "$XDG_CONFIG_HOME/ts3client"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"

set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -gx DISCORD_USER_DATA_DIR "$XDG_DATA_HOME"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx PYTHONUSERBASE "$XDG_DATA_HOME/python"
set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm"

set -gx MYSQL_HISTFILE "$XDG_STATE_HOME/mysql/history"
set -gx SQLITE_HISTORY "$XDG_STATE_HOME/sqlite/history"
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python/history"

set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx QQ_FIX_MAC 1

set -gx JAVA_HOME (readlink -f /usr/bin/java | string replace "/bin/java" "")
set -gx _JAVA_OPTIONS "-Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache -Xms3G -Xmx6G"
set -gx M2_HOME /usr/share/java/maven
set -gx KOTLIN_HOME /usr/share/kotlin
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GOBIN "$GOPATH/bin"

# set -gx GTK_IM_MODULE fcitx
# set -gx QT_IM_MODULE fcitx
# set -gx QT4_IM_MODULE fcitx
# set -gx XMODIFIERS @im=fcitx
# set -gx SDL_IM_MODULE fcitx
# set -gx INPUT_METHOD fcitx
# set -gx GLFW_IM_MODULE ibus

set -gx REDISCLI_HISTFILE "$XDG_DATA_HOME/redis/rediscli_history"
set -gx REDISCLI_RCFILE "$XDG_CONFIG_HOME/redis/redisclirc"

# Game
# set -gx RADV_PERFTEST gpl
# set -gx SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS 0
# set -gx SDL_VIDEODRIVER wayland

prepend_path "$HOME/.local/bin"
prepend_path "$GOBIN"
