if not vim.g.neovide then return {} end

return {
  { import = "astrocommunity.recipes.neovide" },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = {
          guifont = "CodeNewRoman Nerd Font,Noto Color Emoji:#h-none",
        },
        g = {
          neovide_hide_mouse_when_typing = true,
          neovide_remember_window_size = true,
        },
      },
    },
  },
}
