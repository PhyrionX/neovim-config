local function my_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- Definir mapeos de teclas dentro de nvim-tree
  vim.keymap.set('n', 's', api.node.open.horizontal, opts('Abrir en Split Horizontal'))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts('Abrir en Split Vertical'))
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Abrir archivo'))
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Cerrar directorio'))
-- Mapeo para añadir archivos
  vim.keymap.set('n', 'a', api.fs.create, opts('Crear archivo'))
end

require('nvim-tree').setup({
  view = {
    width = 35,
    side = 'left',
    signcolumn = 'yes',
  },
  renderer = {
    highlight_opened_files = "icon",
    highlight_git = true,
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
      glyphs = {
        default = '',
        symlink = '',
        folder = {
          default = '',
          open = '',
          empty = '',
          empty_open = '',
          symlink = '',
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
        },
      },
    },
  },
  filters = {
    dotfiles = false,
  },
  on_attach = my_on_attach,
})
