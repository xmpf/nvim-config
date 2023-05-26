vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1 
vim.g.python3_host_prog = '/usr/bin/python3' 

-- plugins
require('plugins')

-- keybindings
require('nest-keys')
require('keymaps')

-- configuration
require('clipboard')
require('configs')

-- programming
require('treesitter')
require('golang')
require('rust')


-- terminal
require('fterm')
