function has_path
  contains $argv[1] $PATH
end

function append_path
  has_path $argv[1] || set PATH $PATH $argv[1]
end

function prepend_path
  has_path $argv[1] || set PATH $argv[1] $PATH
end

# Fcitx5
if test "$XDG_CURRENT_DESKTOP" != "KDE" || test "$XDG_SESSION_TYPE" != "wayland"
  # GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx SDL_IM_MODULE=fcitx GLFW_IM_MODULE=ibus
  set -gx GTK_IM_MODULE fcitx
  set -gx QT_IM_MODULE fcitx
  set -gx XMODIFIERS @im=fcitx
  set -gx SDL_IM_MODULE fcitx
  set -gx GLFW_IM_MODULE ibus
end

set -gx QT_QPA_PLATFORMTHEME qt6ct

prepend_path "$HOME/.local/bin"

set -gx EDITOR nvim

# Rust
if type -q cargo
  prepend_path "$HOME/.cargo/bin"
end

# Python - pyenv
if type -q pyenv
  set -gx PYENV_ROOT "$HOME/.pyenv"
  prepend_path "$PYENV_ROOT/bin"
  pyenv init - | source
end

# Java
if type -q java
  set -gx JAVA_HOME (readlink -f /usr/bin/java | string replace "/bin/java" "")
end

# Kotlin
if type -q kotlin
  set -gx KOTLIN_HOME "/usr/share/kotlin"
end

# pnpm
if type -q pnpm
  set -gx PNPM_HOME "$HOME/.local/share/pnpm"
  prepend_path "$PNPM_HOME"
end

# go
if type -q go
  set -gx GOPATH "$HOME/.local/share/go"
end
