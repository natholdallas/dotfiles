function initkde
    if [ -f "/etc/xdg/menus/plasma-applications.menu" ]
        XDG_MENU_PREFIX=plasma- kbuildsycoca6
    else if [ -f "/etc/xdg/menus/arch-applications.menu" ]
        XDG_MENU_PREFIX=arch- kbuildsycoca6
    end
end
