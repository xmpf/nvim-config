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
  
  --[ debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  -- markdown
  use 'plasticboy/vim-markdown'
  use 'nathom/filetype.nvim'

  -- programming
 use "Djancyp/better-comments.nvim"


  -- linting
  use 'mfussenegger/nvim-lint' 

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
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'doums/suit.nvim'

  use {
    "ms-jpq/coq_nvim",
    branch = "coq",
    event = "InsertEnter",
    opt = true,
    run = ":COQdeps",
    config = function()
      require("config.coq").setup()
    end,
    requires = {
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
      { "ms-jpq/coq.thirdparty", branch = "3p", module = "coq_3p" },
    },
    disable = false,
  } 

  -- Treesitter.
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-tree.lua'

  -- Color theme.
  use 'ayu-theme/ayu-vim'

  -- Telescope and its dependencies.
  use 'jremmen/vim-ripgrep'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/telescope.nvim'

  -- Lua snippets.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- keybindings
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
require('plugins.coq')
