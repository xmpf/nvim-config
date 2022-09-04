-- meta variables
local spaces = spaces 

-- global opts
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.showmode = false
vim.opt.hidden = true

---[ backups
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false

---[ misc
vim.opt.encoding = 'utf-8'
vim.opt.syntax = 'enable'
vim.opt.errorbells = false
vim.opt.matchpairs = { '(:)', '{:}', '[:]', '<:>' }
vim.opt.backspace = { 'eol', 'start', 'indent' } 

---[ ui
vim.opt.mouse:append('a')
vim.opt.cursorline = true
vim.opt.lazyredraw = true 
vim.opt.cmdheight = 4
vim.opt.termguicolors = true
vim.opt.conceallevel = 3
vim.opt.splitright = true
vim.opt.splitbelow = true

---[ indentation
vim.opt.shiftwidth = spaces
vim.opt.expandtab = true
vim.opt.tabstop = spaces
vim.opt.softtabstop = spaces
vim.opt.autoindent = true

---[ search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- vim commands
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.cmd('filetype indent on')
vim.cmd('colorscheme behelit')
   
-- buffer local
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.swapfile = false
vim.bo.filetype = 'on'

-- window local
vim.wo.number = true
vim.wo.wrap = false
vim.wo.colorcolumn = '80'
