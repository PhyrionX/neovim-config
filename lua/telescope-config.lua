local telescope = require('telescope')

telescope.setup{
  defaults = {
    prompt_prefix = "> ",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = { mirror = false },
      vertical = { mirror = false },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown", -- Configura el tema dropdown para búsqueda de archivos
    },
  },
}
