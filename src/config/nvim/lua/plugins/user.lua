-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
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

  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "regex",
    })
  end,
}
