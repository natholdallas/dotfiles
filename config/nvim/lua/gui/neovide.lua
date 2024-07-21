if os.getenv "XDG_SESSION_TYPE" == "wayland" then
  vim.o.guifont = "CodeNewRoman Nerd Font:h14"
else
  vim.o.guifont = "CodeNewRoman Nerd Font:h14"
end

vim.g.neovide_transparency = 1
vim.g.neovide_hide_mouse_when_typing = true
-- vim.g.neovide_no_idle = true
-- vim.g.neovide_fullscreen = true
vim.g.neovide_remember_window_size = true
-- vim.g.neovide_cursor_vfx_mode = "railgun"
