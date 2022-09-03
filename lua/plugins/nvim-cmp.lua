local cmp = require('cmp')

--[[  KEYBINDINGS
--    `Ctr-e`: abort autocomplete
--    ``
--]]

cmp.setup({

  snippet = {
    expand = 
      function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Esc>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),

})
