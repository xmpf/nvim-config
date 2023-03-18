require('nvim-treesitter.install').compilers = { "gcc" }
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    -- b
    "bash",
    -- c
    "c",
    -- d
    "dockerfile",
    -- g
    "go",
    "gomod",
    -- h
    "html",
    -- j
    "java",
    "json",
    "javascript",
    -- l
    "lua",
    -- m
    "make",
    "markdown",
    -- n
    "nix",
    -- p
    "python",
    "php",
    "proto",
    -- r
    "rust",
    -- t
    "typescript",
    "tsx",
    "toml",
    -- y
    "yaml",
  },
  auto_install = true,
  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting=false, 
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = true },
  }, 
}
