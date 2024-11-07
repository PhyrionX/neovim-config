local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Salida rápida
map('n', '<leader>q', ':q<CR>', opts)

-- Guardar archivo
map('n', '<leader>w', ':w<CR>', opts)

-- Reemplazo rápido
map('n', '<leader>r', ':%s/', opts)

-- Abre el explorador de archivos (reemplazable por plugins como NERDTree)
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Abrir nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
