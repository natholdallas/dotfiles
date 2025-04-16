-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#0F1011" },
      },
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#0F1011" },
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
    "felipeagc/fleet-theme-nvim",
  },
  {
    "datsfilipe/vesper.nvim",
  },
  {
    "comfysage/gruvboxed",
    -- priority = 1000,
    opts = {
      -- transparent_background = false,
      contrast_dark = "hard",
      -- override_terminal = true,
      -- style = {
      --   tabline = { reverse = true, color = "green" },
      --   search = { reverse = false, inc_reverse = true },
      --   types = { italic = true },
      --   keyword = { italic = true },
      --   comment = { italic = false },
      -- },
      overrides = {},
    },
  },
}
