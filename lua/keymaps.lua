vim.g.mapleader = " "

-- In insert mode press <Ctrl-K. 
-- and then enter a combination
-- to find out how to define it
local keymap = vim.api.nvim_set_keymap

local opts = { noremap=true, silent=true }

-- normal mode
keymap('n', '<C-s>', ':w<CR>', opts)
keymap('n', 'ww',    ':w<CR>', opts)
keymap('n', '<Tab>', '>>', opts)
keymap('n', '<S-Tab>', '<<$', opts)

--- telescope
keymap('n', '<C-f>', ':Telescope find_files<CR>', opts)
keymap('n', '<C-g>', ':Telescope live_grep<CR>', opts) 
keymap('n', '<C-b>', ':Telescope buffers<CR>', opts) 
keymap('n', '<leader>k', ':Telescope keymaps<CR>', opts) 
keymap('n', '<C-d>', ':Telescope diagnostics<CR>', opts)
keymap('n', '<M-d>', ':lua vim.diagnostic.goto_next()<CR>', opts) 

--- markdown
--- see: ./plugins/vim-markdown.lua

--- copy/paste
keymap('n', '<C-v>', 'P$i<Right>', opts)

--- programming
keymap('n', '<C-k>', '<cmd>lua require("lsp_signature").signature()<CR>', opts)
keymap('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
keymap('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts) 

-- insert mode
keymap('i', '<C-s>', '<ESC>:w<CR>i<Right>', opts)
keymap('i', '<C-v>', '<SPACE><ESC>P$i', opts)
keymap('i', '<S-Tab>', '<ESC><<$i<Right>', opts)
