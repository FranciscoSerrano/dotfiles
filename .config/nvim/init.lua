-- My Default Options
vim.o.syntax = "on"
vim.o.relativenumber = true
vim.o.number = true
vim.o.showmode = false
vim.o.wildmenu = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.termguicolors = true
vim.o.softtabstop = 2
vim.o.clipboard = "unnamedplus"

-- Key Remaps
vim.g.mapleader = " "

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })
vim.keymap.set("n", "<Leader>w", "<C-w>k")
vim.keymap.set("n", "<Leader>a", "<C-w>h")
vim.keymap.set("n", "<Leader>s", "<C-w>j")
vim.keymap.set("n", "<Leader>d", "<C-w>l")
vim.keymap.set("n", "<Leader>/", ":nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "<Leader>y", ":%y<CR>")
vim.keymap.set("n", "k", "v:count == 0 ? \"gk\" : \"k\"", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? \"gj\" : \"j\"", { expr = true, silent = true })
vim.keymap.set("n", "<Leader>v", ":edit ~/.config/nvim/init.lua<CR>", { silent = true })

-- Get those plugins
require('plugins')
