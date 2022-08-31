vim.g.mapleader = " "

-- In insert mode press <Ctrl-K. 
-- and then enter a combination
-- to find out how to define it
local keymap = vim.api.nvim_set_keymap

-- normal mode
keymap('n', '<c-s>', ':w<CR>', {})
keymap('n', 'ww',    ':w<CR>', {})
keymap('n', '<leader>t', ':hsplit<CR>:terminal<CR>', {})

--- telescope
keymap('n', '<c-f>',     ':Telescope find_files<CR>', {})
keymap('n', '<leader>g', ':Telescope live_grep<CR>', {}) 
keymap('n', '<leader>b', ':Telescope buffers<CR>', {}) 
keymap('n', '<leader>k', ':Telescope keymaps<CR>', {}) 

--- copy/paste
keymap('n', '<c-v>', 'P$i<Right>', {})

-- insert mode
keymap('i', '<c-s>', '<ESC>:w<CR>', {})
keymap('i', '<c-v>', '<ESC>P$i<Right>', {})

