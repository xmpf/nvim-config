local cmp = require('cmp')

--[[  KEYBINDINGS
--    `Ctr-e`: abort autocomplete
--    ``
--]]

cmp.setup({

  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(), 
    ['<C-p'] = cmp.mapping.complete(),
    ['<Esc>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  })
})
