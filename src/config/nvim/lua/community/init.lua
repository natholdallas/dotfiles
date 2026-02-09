-- ---@type LazySpec
-- return {
--   "AstroNvim/astrocommunity",
--   { import = "astrocommunity.pack.lua" },
--   { import = "astrocommunity.pack.python" },
--   { import = "astrocommunity.pack.fish" },
--   { import = "astrocommunity.pack.bash" },
--   { import = "astrocommunity.pack.vue" },
--   { import = "astrocommunity.pack.go" },
--   { import = "astrocommunity.pack.typescript" },
--   { import = "astrocommunity.pack.html-css" },
--   { import = "astrocommunity.pack.toml" },
--   { import = "astrocommunity.editing-support.vim-visual-multi" },
--   { import = "astrocommunity.editing-support.bigfile-nvim" },
--   { import = "astrocommunity.recipes.cache-colorscheme" },
--   { import = "astrocommunity.split-and-window.mini-map" },
--   { import = "astrocommunity.scrolling.nvim-scrollbar" },
-- }

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

  -- 语言包 (可以根据系统环境动态加载)
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.toml" },

  -- 只有当系统安装了对应编译器/解释器时才加载的语言包
  has "go" and { import = "astrocommunity.pack.go" } or nil,
  has "python3" and { import = "astrocommunity.pack.python" } or nil,
  has "fish" and { import = "astrocommunity.pack.fish" } or nil,
  has "bash" and { import = "astrocommunity.pack.bash" } or nil,
  has "node" and { import = "astrocommunity.pack.vue" } or nil,
}
