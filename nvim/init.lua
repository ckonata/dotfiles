-- General settings
vim.opt.number = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = true

-- Tabs and identation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse support
vim.opt.mouse = "a"

-- Split management
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Appearance
vim.opt.termguicolors = true

-- Keymaps
require("config.keymaps")

-- Lazy plugins
require("config.lazy")


