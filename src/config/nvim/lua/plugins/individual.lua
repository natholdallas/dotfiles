-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

local function has(cmd) return vim.fn.executable(cmd) == 1 end

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        has "node" and "unocss-language-server" or nil,
        -- "lua-language-server",
        "tombi",
        has "node" and "prettierd" or nil,
        has "node" and "tailwindcss-language-server" or nil,
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { width = 50 },
    },
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            x = {
              ["S"] = {
                function() vim.api.nvim_feedkeys("ysiw", "v", true) end,
                desc = "Add surrounding",
              },
            },
          },
        },
      },
    },
    config = function() require("nvim-surround").setup {} end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- ❗不隐藏 . 开头文件
          hide_gitignored = true, -- ✅ 只隐藏 gitignore 里的
          hide_hidden = false, -- 不隐藏系统隐藏文件（Linux）
          hide_by_name = { ".git" }, -- 通过文件名隐藏
        },
      },
    },
  },

  {
    "Saghen/blink.cmp",
    optional = true,
    opts = function(_, opts)
      opts.keymap["<Tab>"] = { "select_next", "fallback" }
      opts.keymap["<S-Tab>"] = { "select_prev", "fallback" }
    end,
  },

  {
    "nvim-pack/nvim-spectre",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>ts", '<cmd>lua require("spectre").toggle()<CR>', desc = "Toggle Spectre (Global Search/Replace)" },
    },
  },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
  --       "lua",
  --       "vim",
  --       "regex",
  --     })
  --   end,
  -- },

  -- {
  --   "romus204/tree-sitter-manager.nvim",
  --   dependencies = {}, -- tree-sitter CLI must be installed system-wide
  --   config = function()
  --     require("tree-sitter-manager").setup {
  --       -- Default Options
  --       -- ensure_installed = {}, -- list of parsers to install at the start of a neovim session. If set to "all", install all parsers.
  --       -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
  --       -- auto_install = false, -- if enabled, install missing parsers when editing a new file
  --       -- highlight = true, -- treesitter highlighting is enabled by default
  --       -- languages = {}, -- override or add new parser sources
  --     }
  --   end,
  -- },
}
