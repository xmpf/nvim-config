local telescope = require('telescope')
local telescope_builtin = require('telescope.builtin')
local telescope_actions = require('telescope.actions')
local nest = require('nest')

telescope.setup({
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "top",
    prompt_prefix = ">",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_defaults = {
      -- TODO add builtin options.
    },
    file_sorter =  require('telescope.sorters').get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require('telescope.sorters').get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.60,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    color_devicons = true,
    use_less = true, 
  }
})

nest.applyKeymaps({
  {
    'g', {
      { 'd', telescope_builtin.lsp_definitions },
      { 't', telescope_builtin.lsp_type_definitions },
      { 'i', telescope_builtin.lsp_implementations },
      { 'r', telescope_builtin.lsp_references },
    }
  },
  { 'z=', telescope_builtin.spell_suggest },
})
