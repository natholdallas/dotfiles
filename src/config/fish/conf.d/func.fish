function po
    if not set -q argv[1]
        set argv[1] v2raya
    end
    switch $argv[1]
        case clash clash_verge
            set -gx http_proxy 'http://127.0.0.1:7890'
            set -gx https_proxy 'http://127.0.0.1:7890'
            set -gx socks_proxy 'socks5://127.0.0.1:7891'
            echo -e "Set proxy to Clash/Clash Verge"
        case clash_verge_rev clash_rev
            set -gx http_proxy 'http://127.0.0.1:7897'
            set -gx https_proxy 'http://127.0.0.1:7897'
            set -gx socks_proxy 'socks5://127.0.0.1:7898'
            echo -e "Set proxy to Clash Verge/Clash Verge Rev"
        case v2raya
            set -gx http_proxy 'http://127.0.0.1:20172'
            set -gx https_proxy 'http://127.0.0.1:20172'
            set -gx socks_proxy 'socks5://127.0.0.1:20170'
            echo -e "Set proxy to V2RayA"
        case v2raya_global
            set -gx http_proxy 'http://127.0.0.1:20171'
            set -gx https_proxy 'http://127.0.0.1:20171'
            set -gx socks_proxy 'socks5://127.0.0.1:20170'
            echo -e "Set proxy to V2RayA Global"
        case '*'
            echo "Unsupported proxy type: $argv[1]"
            return 1
    end
    set -gx no_proxy 'localhost,127.0.0.1'
    return 0
end

function pf
    set -e http_proxy
    set -e https_proxy
    set -e socks_proxy
    set -e no_proxy
end

function initkde
    if [ -f "/etc/xdg/menus/plasma-applications.menu" ]
        XDG_MENU_PREFIX=plasma- kbuildsycoca6
    else if [ -f "/etc/xdg/menus/arch-applications.menu" ]
        XDG_MENU_PREFIX=arch- kbuildsycoca6
    end
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
