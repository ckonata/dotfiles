--vim.cmd("let g:netrw_banner = 0") --disables the banner at the top file explorer 

--vim.opt.guicursor = "" --set block cursor
vim.opt.nu = true -- enable absolute line numbers
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true --inset spaces instead of real tab characters when tab is pressed
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.swapfile = false --it is safe if combined with undofile
vim.opt.backup = false
vim.opt.undofile = true --undo changes after restarting neovim

vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true --enable full RGB colors
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes" --shows the sign column on the left side of the screen, showing git symbols, breakpoints, etc

vim.opt.backspace = {"start", "eol", "indent"}

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 50
--vim.opt.colorcolumn = "120"

vim.opt.clipboard:append("unnamedplus")
vim.opt.hlsearch = true

vim.opt.mouse = "a"
vim.g.editorconfig = true

