local nest = require('nest')

nest.applyKeymaps {
  -- Disable ex mode
  { 'Q', '<cmd>qall<cr>' },

  -- Disable recording
  { 'qq', '<Nop>' },

  -- Reset search highlight
  { '<leader>h', '<cmd>nohl<cr>' },

  -- move between windows
  { '<m-w>', '<c-w>j' }, -- up
  { '<m-s>', '<c-w>k' }, -- down
  { '<m-a>', '<c-w>h' }, -- left
  { '<m-d>', '<c-w>l' }, -- right

  -- move between buffers
  { '<m-l>', '<cmd>bnext<cr>' },
  { '<m-j>', '<cmd>bprevious<cr>' },

  {
    '<leader>', {
      { '-',  '<cmd>split<cr>' },
      { '\\', '<cmd>vsplit<cr>' },
      { 'q',  '<cmd>quit<cr>' },
      { 'o',  '<cmd>only<cr>' },
    }
  },

  -- reindent whole file
  { '<leader>i',  'mzgg=G`z' },

  -- telescope
  {
    '<leader>tt', '<cmd>Telescope live_grep<cr>'
    ,'<leader>tb', '<cmd>Telescope buffers<cr>'
  }
}