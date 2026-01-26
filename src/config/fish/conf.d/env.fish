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
set -gx XDG_RUNTIME_HOME "/run/user/$UID"
set -gx XDG_DATA_DIRS /usr/local/share:/usr/share
set -gx XDG_CONFIG_DIRS /etc/xdg

# pnpm
if command -sq pnpm
    set -q PNPM_HOME || set -gx PNPM_HOME "$HOME/.local/share/pnpm"
    prepend_path "$PNPM_HOME"
end

# npm
if command -sq npm
    set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
    prepend_path "$XDG_DATA_HOME/npm/bin"
end

# postgres sql
if command -sq postgres
    set -gx PSQLRC "$XDG_CONFIG_HOME/pg/psqlrc"
    set -gx PSQL_HISTORY "$XDG_STATE_HOME/psql_history"
    set -gx PGPASSFILE "$XDG_CONFIG_HOME/pg/pgpass"
    set -gx PGSERVICEFILE "$XDG_CONFIG_HOME/pg/pg_service.conf"
end

# desktop

set -gx GTK_USE_PORTAL 1

# fcitx 5
if test "$XDG_SESSION_TYPE" != wayland
    set -gx GTK_IM_MODULE fcitx
else
    if test "$XDG_SESSION_DESKTOP" != KDE
        set -gx QT_IM_MODULE fcitx
    end
end
set -gx XMODIFIERS @im=fcitx
set -gx SDL_IM_MODULE fcitx
set -gx INPUT_METHOD fcitx
set -gx GLFW_IM_MODULE ibus
set -gx QT_WAYLAND_TEXT_INPUT_PROTOCOL zwp_text_input_v1

set -gx ANDROID_USER_HOME "$XDG_DATA_HOME/android"
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx PYTHONPYCACHEPREFIX "$XDG_CACHE_HOME/python"
set -gx __GL_SHADER_DISK_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx WECHAT_DATA_DIR "$XDG_DATA_HOME/wechat"
set -gx W3M_DIR "$XDG_STATE_HOME/w3m"
set -gx WGETRC "$XDG_CONFIG_HOME/wgetrc"
set -gx GTK_RC_FILES "$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -gx TS3_CONFIG_DIR "$XDG_CONFIG_HOME/ts3client"
set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx QQ_FIX_MAC 1

# cuda
set -Ux PATH /opt/cuda/bin $PATH
set -Ux LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH

set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -gx DISCORD_USER_DATA_DIR "$XDG_DATA_HOME"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx PYTHONUSERBASE "$XDG_DATA_HOME/python"

set -gx HISTFILE "$XDG_STATE_HOME/bash/history"
set -gx MYSQL_HISTFILE "$XDG_STATE_HOME/mysql/history"
set -gx SQLITE_HISTORY "$XDG_STATE_HOME/sqlite/history"
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python/history"

set -gx JAVA_HOME (readlink -f /usr/bin/java | string replace "/bin/java" "")
set -gx _JAVA_OPTIONS "-Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache -Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -gx M2_HOME /usr/share/java/maven
set -gx MAVEN_OPTS "-Dmaven.repo.local="$XDG_DATA_HOME"/maven/repository"
set -gx MAVEN_ARGS "--settings $XDG_CONFIG_HOME/maven/settings.xml"
set -gx KOTLIN_HOME /usr/share/kotlin

set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GOBIN "$GOPATH/bin"

set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"

set -gx REDISCLI_HISTFILE "$XDG_DATA_HOME/redis/rediscli_history"
set -gx REDISCLI_RCFILE "$XDG_CONFIG_HOME/redis/redisclirc"

set -gx DOTNET_CLI_HOME "$XDG_DATA_HOME/dotnet"

prepend_path "$HOME/.local/bin"
prepend_path "$GOBIN"
