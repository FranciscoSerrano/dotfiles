-- My Default Options
vim.o.syntax = "on"
vim.o.number = true
vim.o.relativenumber = true
vim.o.wildmenu = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.softtabstop = 2
vim.g.mapleader = " "
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

require('plugins')
