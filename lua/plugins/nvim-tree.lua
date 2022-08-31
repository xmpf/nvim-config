local nvim_tree = require('nvim-tree')
local nest = require('nest')

nvim_tree.setup {
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
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
  { '<leader>n', '<cmd>NvimTreeToggle<cr>' },
}
