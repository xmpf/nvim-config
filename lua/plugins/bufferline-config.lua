require("bufferline").setup({
  highlights = {
    fill = { 
      fg = '#D93846',
      bg = '#000000',
    },
    background = {
      fg = '#D93846',
      bg = '#000000'
    },
    tab = {
      fg = '#D93846',
      bg = '#D95D39'
    },
    tab_selected = {
      fg = tabline_sel_bg,
      bg = '#D95D39'
    }, 
    buffer_selected = { 
      bold = true 
    },
    diagnostic_selected = {
      bold = true 
    },
    info_selected = { 
      bold = true 
    },
    info_diagnostic_selected = {
      bold = true 
    },
    warning_selected = {
      bold = true 
    },
    warning_diagnostic_selected = {
      bold = true 
    },
    error_selected = {
      bold = true 
    },
    error_diagnostic_selected = {
      bold = true 
    },
    close_button = {
      fg = '#FFFFFF',
      bg = '#FFFFFF',
    },
    close_button_visible = {
      fg = '#FFFFFF',
      bg = '#FFFFFF',
    },
  }, 
  options = {
    show_close_icon = true,
    diagnostics = 'nvim_lsp',
    max_prefix_length = 8, 
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    indicator = {
      style = '',
    },
  }
}) 
