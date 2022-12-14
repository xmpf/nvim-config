local nvim_tree = require('nvim-tree')
local nest = require('nest')

nvim_tree.setup {
  sort_by = "case_insensitive",
  view = {
    adaptive_size = false,
    side = "left",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  filters = {
    dotfiles = true,
  }
}

nest.applyKeymaps {
  { 'nn', '<cmd>NvimTreeToggle<cr>' },
}
