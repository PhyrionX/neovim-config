-- ~/.config/nvim/lua/lsp.lua
local lspconfig = require('lspconfig')

-- Configuración para el servidor de Python (pyright)
lspconfig.pyright.setup{}

-- Configuración para el servidor de JavaScript/TypeScript (tsserver)
lspconfig.tsserver.setup{}
