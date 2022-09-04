# Neovim configuration files

## Install / Setup

...

+ New plugins are defined in `lua/plugins.lua`.
+ Configuration files regarding plugins should be under `lua/plugins/<plugin>.lua`

#### vim-go

+ `:GoInstallBinaries`

## Features

+ Plugin management via [Packer.nvim](https://github.com/wbthomason/packer.nvim).
+ Language server protocol (LSP) support via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
+ Code highlighting via [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
+ ...

## Keybindings

File: `lua/keymaps.lua`

+ `vim.g.mapleader = " "`

File: `lua/keybindings.lua`

+ `{ 'QQ', '<cmd>q!<cr>' }`
+ `{ 'qq', '<cmd>wq!<cr>' }`
+ `{ '<leader>h', '<cmd>nohl<cr>' }`

File: `lua/plugins/nvim-tree.lua`

+ `{ 'nn', '<cmd>NvimTreeToggle<cr>' }`

## References

+ https://github.com/oblique/configs
+ https://github.com/gerep/dot
+ https://github.com/rockerBOO/awesome-neovim
+ https://github.com/jdhao/nvim-config
+ https://github.com/CosmicNvim/CosmicNvim 
