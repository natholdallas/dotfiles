-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "unocss-language-server",
        "lua-language-server",
        "taplo",
      },
    },
  },

  {
    "Comment.nvim",
    enabled = true,
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
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua",
        "vim",
        "regex",
      })
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- ❗不隐藏 . 开头文件
          hide_gitignored = true, -- ✅ 只隐藏 gitignore 里的
          hide_hidden = false, -- 不隐藏系统隐藏文件（Linux）
        },
      },
    },
  },
}
