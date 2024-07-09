local wezterm = require("wezterm")

return {
  font = wezterm.font_with_fallback({
    "Monaco Nerd Font",
    -- Icons
    "Noto Color Emoji",
    -- Chinese
    "Noto Sans CJK SC",
  }),
  font_size = 14,
  freetype_load_target = "Light",
  color_scheme = "Seti",
  xcursor_theme = "Bibata-Modern-Ice",
  allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",
  enable_wayland = false,
  default_cursor_style = "SteadyBar",
  window_padding = {
    left = 16,
    right = 16,
    top = 16,
    bottom = 16,
  },
  window_background_opacity = 0.9,
  window_close_confirmation = "NeverPrompt",
  hide_tab_bar_if_only_one_tab = true,
  hyperlink_rules = {
    -- Linkify things that look like URLs
    -- This is actually the default if you don't specify any hyperlink_rules
    {
      regex = "\\b\\w+://(?:[\\w.-]+)\\.[a-z]{2,15}\\S*\\b",
      format = "$0",
    },
    -- match the URL with a PORT
    -- such 'http://localhost:3000/index.html'
    {
      regex = "\\b\\w+://(?:[\\w.-]+):\\d+\\S*\\b",
      format = "$0",
    },
    -- linkify email addresses
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
    },
    -- file:// URI
    {
      regex = "\\bfile://\\S*\\b",
      format = "$0",
    },
  },

  keys = {
    {
      key = "Enter",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "Enter",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "PageUp",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ScrollByPage(-1),
    },
    {
      key = "PageDown",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ScrollByPage(1),
    }
  }
}

