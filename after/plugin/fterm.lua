local fterm = require("FTerm")

-- command aliases
vim.api.nvim_create_user_command('FTermToggle', fterm.toggle, { bang = true })

-- variables
local toggleTerm = fterm.toggle
local opts = {}

-- keybindings

---[ normal mode
vim.keymap.set('n', '<leader>ff', toggleTerm, opts)

---[ terminal mode
vim.keymap.set('t', '<m-a>', '<C-\\><C-n>:FTermToggle<CR>', {})

