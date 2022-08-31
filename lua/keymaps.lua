vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap

-- normal mode
keymap('n', '<c-s>', ':w<CR>', {})
keymap('n', '<c-f>', ':Telescope find_files<CR>', {})
keymap('n', '<leader>t', ':hsplit<CR>:terminal<CR>', {})
keymap('n', '<leader>g', ':Telescope live_grep<CR>', {}) 

-- insert mode
keymap('i', '<c-s>', '<ESC>:w<CR>', {})
