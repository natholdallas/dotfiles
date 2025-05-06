-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- Flash
  -- {
  --   "folke/flash.nvim",
  --   event = "VeryLazy",
  --   ---@type Flash.Config
  --   opts = {},
  --   -- stylua: ignore
  --   keys = {
  --     { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
  --     -- { "S",     mode = { "n", "o", "x" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
  --     { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
  --     { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  --     { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
  --   },
  -- },

  -- { import = "astrocommunity.completion.nvim-cmp" },
  -- { import = "astrocommunity.completion.cmp-cmdline" },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "echasnovski/mini.icons",
  --   },
  -- },
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

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    })
  end,

  -- LuaSnip
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     -- include the default astronvim config that calls the setup call
  --     require "astronvim.plugins.configs.luasnip" (plugin, opts)
  --     -- load snippets paths
  --     require("luasnip.loaders.from_vscode").lazy_load {
  --       paths = { vim.fn.stdpath "config" .. "/snippets" },
  --     }
  --   end,
  -- }
}
