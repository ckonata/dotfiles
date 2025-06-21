-- Keymaps

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Up, down
vim.keymap.set('n', 'j', 'gj', { desc = 'Up', noremap = true})
vim.keymap.set('n', 'k', 'gk', {desc = 'Down', noremap = true})
