vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<ESC>:w<CR>', {})
keymap('n', '<c-f>', ':Telescope find_files<CR>', {})
keymap('n', '<leader>t', ':vsplit<CR>:terminal<CR>', {})
