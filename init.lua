vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1 

-- plugins
require('plugins')

-- keybindings
require('keybindings')
require('keymaps')

-- configuration
require('clipboard')
require('configs')

-- programming
require('treesitter')
require('lsp')
require('golang')
require('rust')


-- terminal
require('fterm')
