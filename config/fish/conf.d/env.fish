function has_path
  contains $argv[1] $PATH
end

function append_path
  has_path $argv[1] || set PATH $PATH $argv[1]
end

function prepend_path
  has_path $argv[1] || set PATH $argv[1] $PATH
end

prepend_path "$HOME/.local/bin"

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

set -gx QT_QPA_PLATFORMTHEME qt6ct
set -gx EDITOR nvim
set -gx TS3_CONFIG_DIR "$XDG_CONFIG_HOME/ts3client"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx __GL_SHADER_DISK_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java -Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache"
set -gx MAVEN_OPTS "-Dmaven.repo.local=$XDG_DATA_HOME/m2/repository"
set -gx DISCORD_USER_DATA_DIR "$XDG_DATA_HOME"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -gx GTK_RC_FILES "$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
set -gx SQLITE_HISTORY "$XDG_DATA_HOME/sqlite_history"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python/history"
set -gx PYTHONPYCACHEPREFIX "$XDG_CACHE_HOME/python"
set -gx PYTHONUSERBASE "$XDG_DATA_HOME/python"
set -gx JAVA_HOME (readlink -f /usr/bin/java | string replace "/bin/java" "")
set -gx KOTLIN_HOME "/usr/share/kotlin"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm"
set -gx GOPATH "$XDG_DATA_HOME/go"

# Fcitx5
if test "$XDG_CURRENT_DESKTOP" != "KDE" || test "$XDG_SESSION_TYPE" != "wayland"
  # GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx SDL_IM_MODULE=fcitx GLFW_IM_MODULE=ibus
  set -gx GTK_IM_MODULE fcitx
  set -gx QT_IM_MODULE fcitx
  set -gx XMODIFIERS @im=fcitx
  set -gx SDL_IM_MODULE fcitx
  set -gx GLFW_IM_MODULE ibus
end
