---@type LazySpec
return {
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
}
