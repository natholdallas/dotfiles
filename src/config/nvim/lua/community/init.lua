local function has(cmd) return vim.fn.executable(cmd) == 1 end

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- 核心编辑增强 (始终加载)
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.bigfile-nvim" },
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- 只有当系统安装了对应编译器/解释器时才加载的拓展包
  has "lua" and { import = "astrocommunity.pack.lua" } or nil,
  has "go" and { import = "astrocommunity.pack.go" } or nil,
  has "fish" and { import = "astrocommunity.pack.fish" } or nil,
  has "bash" and { import = "astrocommunity.pack.bash" } or nil,
  has "node" and { import = "astrocommunity.pack.vue" } or nil,
  has "node" and { import = "astrocommunity.pack.tailwindcss" } or nil,
  has "python" and { import = "astrocommunity.pack.python.base" } or nil,
  has "python" and { import = "astrocommunity.pack.python.ty" } or nil,
  has "python" and { import = "astrocommunity.pack.python.ruff" } or nil,
}
