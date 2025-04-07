if not vim.g.neovide then return {} end

return {
  { import = "astrocommunity.recipes.neovide" },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = {
          guifont = "Monaco Nerd Font:#e-subpixelantialias:#h-none:h13",
        },
        g = {
          neovide_transparency = 1,
          neovide_hide_mouse_when_typing = true,
          neovide_remember_window_size = true,
        },
      },
    },
  },
}
