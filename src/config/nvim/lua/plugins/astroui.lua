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
    "comfysage/gruvboxed",
    opts = {
      contrast_dark = "hard",
    },
  },
  {
    "Mofiqul/vscode.nvim",
    opts = {
      transparent = false,
      italic_comments = false,
      underline_links = true,
      disable_nvimtree_bg = true,
      terminal_colors = true,

      -- Override colors (see ./lua/vscode/colors.lua)
      color_overrides = {
        vscNone = "NONE",
        vscFront = "#D4D4D4",
        vscBack = "#1F1F1F",

        vscTabCurrent = "#1F1F1F",
        vscTabOther = "#2D2D2D",
        vscTabOutside = "#252526",

        vscLeftDark = "#252526",
        vscLeftMid = "#373737",
        vscLeftLight = "#636369",

        vscPopupFront = "#BBBBBB",
        vscPopupBack = "#202020",
        vscPopupHighlightBlue = "#04395E",
        vscPopupHighlightGray = "#343B41",

        vscSplitLight = "#898989",
        vscSplitDark = "#444444",
        vscSplitThumb = "#424242",

        vscCursorDarkDark = "#1F1F1F",
        vscCursorDark = "#51504F",
        vscCursorLight = "#AEAFAD",
        vscSelection = "#264F78",
        vscLineNumber = "#5A5A5A",

        vscContext = "#404040",
        vscContextCurrent = "#707070",

        vscFoldBackground = "#202d39",

        -- Low contrast with default background
        vscDimHighlight = "#51504F",
      },
    },
  },
}
