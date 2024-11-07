local opt = vim.opt

opt.number = true             -- Habilita números de línea
opt.relativenumber = true     -- Números de línea relativos
opt.tabstop = 4               -- Número de espacios por tabulación
opt.shiftwidth = 4            -- Espacios para indentación automática
opt.expandtab = true          -- Convierte tabulaciones en espacios
opt.smartindent = true        -- Indentación automática inteligente
opt.wrap = false              -- Desactiva el ajuste de líneas
opt.cursorline = true         -- Resalta la línea actual
opt.clipboard = "unnamedplus" -- Usa el portapapeles del sistema
opt.termguicolors = true      -- Colores verdaderos

vim.g.mapleader = " "         -- Tecla líder (space)
