-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    styles = { italic = false },
    -- change colorscheme
    colorscheme = "astrotheme",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        Comment = { italic = false },
        ["@comment"] = { italic = false },
        ["@keyword"] = { italic = false },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },

  {
    "Mofiqul/vscode.nvim",
    opts = {
      transparent = false,
      italic_comments = false,
      underline_links = false,
      disable_nvimtree_bg = true,
      terminal_colors = true,

      group_overrides = {
        TelescopeNormal = { bg = "#171717" },
        TabLineFill = { bg = "#171717" },
        StatusLine = { bg = "#1e1e1e" },
        NeoTreeIndentMarker = { fg = "#1e1e1e" },
        NotifyBackground = { bg = "#1e1e1e" },
      },

      -- Override colors (see ./lua/vscode/colors.lua)
      color_overrides = {
        vscBack = "#171717", -- #1F1F1F
        vscTabCurrent = "#171717", -- #1F1F1F
        vscCursorDarkDark = "#171717", -- #363636
      },
    },
  },

  {
    "AstroNvim/astrotheme",
    config = function()
      require("astrotheme").setup {
        highlights = {
          astrodark = {
            modify_hl_groups = function(hl)
              hl.NeoTreeNormal.bg = "#121418"
              hl.NeoTreeNormalNC.bg = "#121418"
            end,
          },
        },
        palettes = {
          astrodark = { -- Extend or modify astrodarks palette colors
            ui = {
              base = "#121418", -- Overrides astrodarks base UI color
            },
          },
        },
      }
    end,
  },
}
