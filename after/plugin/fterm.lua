local fterm = require("FTerm")
local toggleTerm = fterm.toggle
vim.keymap.set('n', '<leader>ff', toggleTerm, opts)
vim.api.nvim_create_user_command('FTermToggle', fterm.toggle, { bang = true })
