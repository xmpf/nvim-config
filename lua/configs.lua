--[ meta variables
local spaces = 2

--[ global opts
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.cindent = true

--[ backups
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false

--[ misc
vim.opt.encoding = 'utf-8'
vim.opt.syntax = 'enable'
vim.opt.errorbells = false
vim.opt.matchpairs = { '(:)', '{:}', '[:]', '<:>' }
vim.opt.backspace = { 'eol', 'start', 'indent' } 

--[ ui
vim.opt.mouse:append('a')
vim.opt.cursorline = true
vim.opt.lazyredraw = true 
vim.opt.cmdheight = 4
vim.opt.termguicolors = true
vim.opt.conceallevel = 3
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmatch = true
vim.opt.number = true
vim.opt.textwidth = 80

--[ indentation
vim.opt.shiftwidth = spaces
vim.opt.expandtab = true
vim.opt.tabstop = spaces
vim.opt.softtabstop = spaces
vim.opt.autoindent = true

--[ search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

--[ buffer local
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.swapfile = false
vim.bo.filetype = 'on'

--[ window local
vim.wo.number = true
vim.wo.wrap = true
vim.wo.colorcolumn = '100'

-- Vimspector options
vim.cmd([[
  let g:vimspector_sidebar_width = 100
  let g:vimspector_bottombar_height = 15
  let g:vimspector_terminal_maxwidth = 70
]]) 

-- Copy path to clipboard
function _G.copy_path()
    local path = vim.fn.expand('%:p')
    vim.fn.setreg('+', path)
    vim.fn.setreg('*', path)
end 

--[ vim commands
vim.cmd('syntax on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')
vim.cmd('colorscheme behelit')
vim.cmd('command ShowPath echo expand(\'%:p\')')
vim.cmd('command CopyPath call v:lua.copy_path()') 
