-- global opts
vim.opt.mouse:append('a')
vim.opt.splitbelow = true
vim.opt.cmdheight = 2
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.termguicolors = true
vim.opt.syntax = "on"
vim.opt.errorbells = false
vim.opt.smartcase = true
vim.opt.showmode = false
vim.opt.backup = false
vim.opt.incsearch = true
vim.opt.hidden = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.splitright = true
vim.opt.hlsearch = true

-- vim commands
vim.cmd('syntax on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')
vim.cmd('colorscheme behelit')

-- buffer local
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.swapfile = false

-- window local
vim.wo.number = true
vim.wo.wrap = false
vim.wo.colorcolumn = '80'
