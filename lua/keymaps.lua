vim.g.mapleader = " "

-- In insert mode press <Ctrl-K. 
-- and then enter a combination
-- to find out how to define it
local keymap = vim.api.nvim_set_keymap

-- normal mode
keymap('n', '<C-s>', ':w<CR>', {})
keymap('n', 'ww',    ':w<CR>', {})
keymap('n', '<leader>t', ':hsplit<CR>:terminal<CR>', {})
keymap('n', '<Tab>', '>>', {})
keymap('n', '<S-Tab>', '<<$', {})

--- telescope
keymap('n', '<C-f>',     ':Telescope find_files<CR>', {})
keymap('n', '<leader>g', ':Telescope live_grep<CR>', {}) 
keymap('n', '<leader>b', ':Telescope buffers<CR>', {}) 
keymap('n', '<leader>k', ':Telescope keymaps<CR>', {}) 
keymap('n', '<leader>d', ':Telescope diagnostics bufnr=0<CR>', {})

--- markdown
--- see: ./plugins/vim-markdown.lua

--- copy/paste
keymap('n', '<C-v>', 'P$i<Right>', {})

--- programming
keymap('n', '<C-k>', '<cmd>lua require("lsp_signature").signature()<CR>', {})
keymap('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<cr>', {})
keymap('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<cr>', {}) 

-- insert mode
keymap('i', '<C-s>', '<ESC>:w<CR>', {})
keymap('i', '<C-v>', '<SPACE><ESC>P$i', {})
keymap('i', '<S-Tab>', '<ESC><<$i<Right>', {})

