require('nvim-treesitter.install').compilers = { "gcc" }
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "make",
    "markdown",
    "bash",
    "c",
    "lua",
    "rust",
    "nix",
    "go",
    "gomod",
    "json",
    "yaml",
    "html",
    "proto",
    "javascript",
    "typescript",
    "tsx",
    "dockerfile",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
