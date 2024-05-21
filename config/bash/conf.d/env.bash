has_path() {
    [[ ":$PATH:" == *":$1:"* ]]
}

append_path() {
    has_path "$1" || PATH="$PATH:$1"
}

prepend_path() {
    has_path "$1" || PATH="$1:$PATH"
}

# Fcitx5
if [[ "$XDG_CURRENT_DESKTOP" != "KDE" ]] || [[ "$XDG_SESSION_TYPE" != "wayland" ]]; then
    # GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx SDL_IM_MODULE=fcitx GLFW_IM_MODULE=ibus
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
    export SDL_IM_MODULE=fcitx
    export GLFW_IM_MODULE=ibus
fi

export QT_QPA_PLATFORMTHEME=qt6ct

prepend_path "$HOME/.local/bin"

export EDITOR=nvim

# Rust
if command -v cargo >/dev/null; then
    prepend_path "$HOME/.cargo/bin"
fi

# Python - pyenv
if command -v pyenv >/dev/null; then
    export PYENV_ROOT="$HOME/.pyenv"
    prepend_path "$PYENV_ROOT/bin"
    eval "$(pyenv init -)"
fi

# Java
if command -v java >/dev/null; then
    export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
fi
# Kotlin
if command -v kotlin >/dev/null; then
    export KOTLIN_HOME="/usr/share/kotlin"
fi

# pnpm
if command -v pnpm >/dev/null; then
    export PNPM_HOME="$HOME/.local/share/pnpm"
    prepend_path "$PNPM_HOME"
fi
