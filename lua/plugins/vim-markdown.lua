--[[ 
      + `zr`: reduces fold level throughout the buffer
      + `zR`: opens all folds
      + `zm`: increases fold level throughout the buffer
      + `zM`: folds everything all the way
      + `za`: open a fold your cursor is on
      + `zA`: open a fold your cursor is on recursively
      + `zc`: close a fold your cursor is on
      + `zC`: close a fold your cursor is on recursively
      + `[[`: go to previous header
      + `]u`: go to parent header 
      + `:Toc`: create ToC 
      + `:InsertToc`: insert ToC 

--]]

-- keybindings
vim.keymap.set('n', '<C-t>', ':Toc<CR>', {}) 
vim.keymap.set('n', '<C-t>i', ':InsertToc<CR>', {}) 

-- disable folding 
vim.g.vim_markdown_folding_disabled = 1

-- ToC
vim.g.vim_markdown_toc_autofit = 1

-- formatting
vim.g.markdown_conceal = 1
vim.g.markdown_enable_conceal = 1
vim.g.vim_markdown_conceal_code_blocks = 1 
vim.g.vim_markdown_toml_frontmatter = 1
vim.g.vim_markdown_json_frontmatter = 1
vim.g.vim_markdown_strikethrough = 1
