-- ~/.config/nvim/lua/treesitter-config.lua
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "tsx", "html", "css" },
  highlight = { enable = true },
  indent = { enable = true },
}
