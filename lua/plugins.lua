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

  -- mason
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'
 
  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- LSP.
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'

  --[ debugging
  use 'mfussenegger/nvim-dap'
  use 'puremourning/vimspector' 

  -- markdown
  use 'plasticboy/vim-markdown'
  use 'nathom/filetype.nvim'

  -- programming
  use "Djancyp/better-comments.nvim"

  --- rust
  use 'simrat39/rust-tools.nvim'
  use 'cespare/vim-toml'
  use 'lvimuser/lsp-inlayhints.nvim'

  --- golang
  use 'ray-x/guihua.lua'
  use 'fatih/vim-go'

  --- LSP autocomplete.
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'doums/suit.nvim'

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  } 

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

  -- multiple cursors
  use 'mg979/vim-visual-multi'
end)

-- plugin configuration files

require('plugins.nvim-tree')
require('plugins.dashboard')
require('plugins.vim-markdown')
require('plugins.nvim-cmp')
require('plugins.mason')
require('plugins.diagnostics')
