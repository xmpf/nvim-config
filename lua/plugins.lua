local utils = require('utils')
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

vim.cmd [[packadd packer.nvim]]

if not utils.path_exists(install_path) then
    vim.fn.system({
        'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })

    fresh_install = true
end

local packer = require('packer')

packer.startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- LSP.
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'

  -- markdown
  use 'plasticboy/vim-markdown'
  use 'jceb/vim-orgmode'

  -- rust
  use 'simrat39/rust-tools.nvim'
  use 'cespare/vim-toml'

  -- golang
  use 'ray-x/guihua.lua'

  -- LSP autocomplete.
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Treesitter.
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-tree.lua'

  -- Color theme.
  use 'ayu-theme/ayu-vim'

  -- Telescope and its dependencies.
  use 'jremmen/vim-ripgrep'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'

  -- Lua snippets.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'LionC/nest.nvim'

  use {
   'nvim-lualine/lualine.nvim',
   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Embeded floating terminal.
  use 'numToStr/FTerm.nvim'

end)
