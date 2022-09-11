# Neovim configuration files

## Install / Setup

...

+ New plugins are defined in `lua/plugins.lua`.
+ Configuration files regarding plugins should be under `lua/plugins/<plugin>.lua`


## Features

+ Plugin management via [Packer.nvim](https://github.com/wbthomason/packer.nvim).
+ Language server protocol (LSP) support via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
+ Code highlighting via [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
+ ...
     
**Installed Plugins** (`:PackerStatus`)

+ FTerm.nvim
+ LuaSnip
+ ayu-vim
+ better-comments.nvim
+ cmp-buffer
+ cmp-nvim-lsp
+ cmp-path
+ cmp-vsnip
+ cmp_luasnip
+ dashboard-nvim
+ filetype.nvim
+ guihua.lua
+ lspsaga.nvim
+ lualine.nvim
+ nest.nvim
+ nvim-cmp
+ nvim-lsp-installer
+ nvim-lspconfig
+ nvim-tree.lua
+ nvim-treesitter
+ nvim-web-devicons (not loaded)
+ packer.nvim
+ plenary.nvim
+ popup.nvim
+ rust-tools.nvim
+ suit.nvim
+ telescope.nvim
+ vim-go
+ vim-markdown
+ vim-ripgrep
+ vim-toml
+ vim-visual-multi
+ vim-vsnip 

### vim-go

+ `:GoInstallBinaries`

### Tree-sitter

+ `:TSUpdate`

### LSP

```
Keyboard shortcuts
Toggle help                          ?
Toggle server info                   <CR>
Update server                        u
Update all installed servers         U
Check for new server version         c
Check for new versions (all servers) C
Uninstall server                     X
Install server                       i
Close window                         <Esc>
Close window                         q 
```

+ `:LspInstall <langSrv>`
+ `:LspSettings <lang>`


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
+ https://www.lunarvim.org/ 
