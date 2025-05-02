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
    colorscheme = "astrotheme",
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
    "comfysage/gruvboxed",
    opts = { contrast_dark = "hard" },
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

        -- vscNone = "NONE",
        -- vscFront = "#D4D4D4",
        vscBack = "#171717", -- #1F1F1F

        vscTabCurrent = "#171717", -- #1F1F1F
        -- vscTabOther = "#2D2D2D",
        -- vscTabOutside = "#252526",

        -- vscLeftDark = "#252526",
        -- vscLeftMid = "#373737",
        -- vscLeftLight = "#636369",

        -- vscPopupFront = "#BBBBBB",
        -- vscPopupBack = "#202020",
        -- vscPopupHighlightBlue = "#04395E",
        -- vscPopupHighlightGray = "#343B41",
        --
        -- vscSplitLight = "#898989",
        -- vscSplitDark = "#444444",
        -- vscSplitThumb = "#424242",

        vscCursorDarkDark = "#171717", -- #363636
        -- vscCursorDark = "#51504F",
        -- vscCursorLight = "#AEAFAD",
        -- vscSelection = "#264F78",
        -- vscLineNumber = "#5A5A5A",

        -- vscDiffRedDark = "#4B1818",
        -- vscDiffRedLight = "#6F1313",
        -- vscDiffRedLightLight = "#FB0101",
        -- vscDiffGreenDark = "#373D29",
        -- vscDiffGreenLight = "#4B5632",
        -- vscSearchCurrent = "#515c6a",
        -- vscSearch = "#613315",

        -- vscGitAdded = "#81b88b",
        -- vscGitModified = "#e2c08d",
        -- vscGitDeleted = "#c74e39",
        -- vscGitRenamed = "#73c991",
        -- vscGitUntracked = "#73c991",
        -- vscGitIgnored = "#8c8c8c",
        -- vscGitStageModified = "#e2c08d",
        -- vscGitStageDeleted = "#c74e39",
        -- vscGitConflicting = "#e4676b",
        -- vscGitSubmodule = "#8db9e2",

        -- vscContext = "#404040",
        -- vscContextCurrent = "#707070",
        --
        -- vscFoldBackground = "#202d39",

        -- vscGray = "#808080",
        -- vscViolet = "#646695",
        -- vscBlue = "#569CD6",
        -- vscAccentBlue = "#4FC1FF",
        -- vscDarkBlue = "#223E55",
        -- vscMediumBlue = "#18a2fe",
        -- vscDisabledBlue = "#729DB3",
        -- vscLightBlue = "#9CDCFE",
        -- vscGreen = "#6A9955",
        -- vscBlueGreen = "#4EC9B0",
        -- vscLightGreen = "#B5CEA8",
        -- vscRed = "#F44747",
        -- vscOrange = "#CE9178",
        -- vscLightRed = "#D16969",
        -- vscYellowOrange = "#D7BA7D",
        -- vscYellow = "#DCDCAA",
        -- vscDarkYellow = "#FFD602",
        -- vscPink = "#C586C0",

        -- Low contrast with default background
        -- vscDimHighlight = "#51504F",
      },
    },
  },
}
