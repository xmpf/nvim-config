vim.opt.mouse:append('a')
vim.opt.splitbelow = true
vim.opt.cmdheight = 2
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

vim.o.termguicolors = true
vim.o.syntax = "on"
vim.o.errorbells = false
vim.o.smartcase = true
vim.o.showmode = false
vim.o.backup = false
vim.o.incsearch = true
vim.o.hidden = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.cmd('syntax on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')
vim.cmd('colorscheme behelit')

vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.swapfile = false

vim.wo.number = true
vim.wo.wrap = false
vim.wo.colorcolumn = '80'

vim.g.mapleader = ";"
