vim.diagnostic.config({
  virtual_text = {
    source = "always",
    prefix = '●',
    spacing = 0,
  },
  severity_sort = true,
  float = {
    source = "always",
    width = 80,
    focus = false,
    border = border,
  },
}) 
