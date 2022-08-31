local nest = require('nest')

nest.applyKeymaps {
  -- Disable ex mode
  { 'Q', '<cmd>q!<cr>' },

  -- Disable recording
  { 'qq', '<cmd>wq!<cr>' },

  -- Reset search highlight
  { '<leader>h', '<cmd>nohl<cr>' },

  -- move between windows
  { '<m-w>', '<c-w>j' }, -- up
  { '<m-s>', '<c-w>k' }, -- down
  { '<m-a>', '<c-w>h' }, -- left
  { '<m-d>', '<c-w>l' }, -- right

  -- move between buffers
  { '<m-l>',   '<cmd>bnext<cr>' },
  { '<m-j>',   '<cmd>bprevious<cr>' },

  -- window splitting
  {
    '<leader>', {
      { '-',  '<cmd>split<cr>' },
      { '\\', '<cmd>vsplit<cr>' },
    }
  },

  -- reindent whole file
  { '<leader>i',  'mzgg=G`z' },

  -- nvim-tree := ./plugins/nvim-tree.lua

}
