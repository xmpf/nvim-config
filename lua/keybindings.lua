local nest = require('nest')

nest.applyKeymaps {
  -- quick quit
  { 'QQ', '<cmd>q!<cr>' },
  { 'qq', '<cmd>wq!<cr>' },

  -- Reset search highlight
  { '<leader>h', '<cmd>nohl<cr>' },

  -- move between windows
  { '<m-w>', '<ESC><C-w>k', mode = 'ni' }, -- up
  { '<m-s>', '<ESC><C-w>j', mode = 'ni' }, -- down
  { '<m-a>', '<ESC><C-w>h', mode = 'ni' }, -- left
  { '<m-d>', '<ESC><C-w>l', mode = 'ni' }, -- right

  -- move between buffers
  { '<m-l>',   '<ESC><cmd>bnext<cr>', mode = 'ni' },
  { '<m-j>',   '<ESC><cmd>bprevious<cr>', mode = 'ni' },

  -- leader keymaps
  {
    '<leader>', {
      -- window splitting
      { '-',  '<cmd>split<cr>' },
      { '\\', '<cmd>vsplit<cr>' },
    }
  },

  -- reindent whole file
  { '<c-i>',  'mzgg=G`z'},

}
