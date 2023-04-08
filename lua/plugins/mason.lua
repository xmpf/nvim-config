-- Mason Setup
require("mason").setup({
  ui = {
    icons = {
      package_installed = "",
      package_pending = "",
      package_uninstalled = "",
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗" 
    },
  }
})
require("mason-lspconfig").setup({
  ensure_installed = {
    "gopls",
  }
}) 
