local nest = require('nest')

nest.applyKeymaps({
  -- quick quit
  { 'QQ', '<cmd>q!<cr>', mode = 'n' },
  { 'qq', '<cmd>wq!<cr>', mode = 'n' },

  -- Reset search highlight
  { 'hh', '<cmd>nohl<cr>', mode = 'n' },

  -- move between windows
  { '<m-w>', '<esc><C-w>k', mode = 'ni' }, -- up
  { '<m-s>', '<esc><C-w>j', mode = 'ni' }, -- down
  { '<m-a>', '<esc><C-w>h', mode = 'ni' }, -- left
  { '<m-d>', '<esc><C-w>l', mode = 'ni' }, -- right

  -- move between buffers
  { '<m-l>', '<esc><cmd>bnext<cr>', mode = 'ni' },
  { '<m-j>', '<esc><cmd>bprevious<cr>', mode = 'ni' },
  { '<m-q>', '<esc>:BufferLinePickClose<cr>', mode = 'ni' }, -- close current buffer

  -- reindent whole file
  { 'gg',  'mzgg=G`z', mode = 'n' },

  {
    '<leader>', {
      { '-',  '<cmd>split<cr>' },
      { '\\', '<cmd>vsplit<cr>' },
      { 'q',  '<cmd>quit<cr>' },
      { 'o',  '<cmd>only<cr>' },
    }
  }, 

  -- TroubleToggle
  { 'tt', '<cmd>TroubleToggle<cr>' },
})
