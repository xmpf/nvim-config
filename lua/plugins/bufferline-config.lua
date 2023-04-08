require("bufferline").setup({
  highlights = {
    fill = {
    },
    background = {
    },
    tab = {
    },
    tab_selected = {
    },
    buffer_selected = {
      bold = true,
    },
    diagnostic_selected = {
      bold = true,
    },
    info_selected = {
      bold = true,
    },
    info_diagnostic_selected = {
      bold = true,
    },
    warning_selected = {
      bold = true,
    },
    warning_diagnostic_selected = {
      bold = true,
    },
    error_selected = {
      bold = true,
    },
    error_diagnostic_selected = {
      bold = true,
    },
    close_button = {
    },
    close_button_visible = {
    },
  },
  options = {
    indicator = {
      style = 'icon',
    },
    modified_icon = "●",
    buffer_close_icon = "❌",
    show_buffer_icons = true,
    close_icon = "❌",
    left_trunc_marker = "",
    right_trunc_marker = "",
    show_close_icon = true,
    diagnostics = 'nvim_lsp',
    max_prefix_length = 8,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
  }
})
