-- plugins.lua
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer se administra a sí mismo
  use 'wbthomason/packer.nvim'
  
  -- Explorador de archivos
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'            -- Iconos 
  -- Temas
  use 'folke/tokyonight.nvim'                  -- Tema Tokyo Night
  use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }  -- Barra de buffers
  use { 'nvim-lualine/lualine.nvim', requires = 'nvim-tree/nvim-web-devicons' } -- Barra de estado 
   
  -- Soporte LSP (Language Server Protocol)
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'         -- Autocompletado
  use 'hrsh7th/cmp-nvim-lsp'     -- Fuente de LSP para nvim-cmp
  use 'hrsh7th/cmp-buffer'         -- Fuente de autocompletado de buffer
  use 'hrsh7th/cmp-path'           -- Autocompletado de rutas de archivos
  use 'L3MON4D3/LuaSnip'         -- Snippets
  
  use 'nvim-treesitter/nvim-treesitter'               -- Resaltado de sintaxis avanzado
  use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }  -- Barra de buffers
  use { 'nvim-lualine/lualine.nvim', requires = 'nvim-tree/nvim-web-devicons' } -- Barra de estado
  use 'prettier/vim-prettier'                         -- Formateador Prettier
  -- Otros plugins...
end)
