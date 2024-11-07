-- ~/.config/nvim/lua/prettier-eslint-config.lua
require'lspconfig'.efm.setup {
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = {".git/"},
    languages = {
      javascript = {
        { formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true },
        { lintCommand = "eslint -f unix --stdin --stdin-filename ${INPUT}", lintStdin = true },
      },
      typescript = {
        { formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true },
        { lintCommand = "eslint -f unix --stdin --stdin-filename ${INPUT}", lintStdin = true },
      },
    },
  }
}
