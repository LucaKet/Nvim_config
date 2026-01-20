--OPZIONI
-- Leader key
vim.g.mapleader = " "

-- Righe numerate
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentazione
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true

--mouse
vim.opt.mouse = "a" 

--undo 
vim.opt.undofile = true

--not showing mode as it is in the status line
vim.opt.showmode = false

--splitscreen
vim.opt.splitright = true
vim.opt.splitbelow = true

--keep alert column always visible on the left
vim.opt.signcolumn = "yes"

--numero minimo di righe che fa vedere sopra e sotto il cursore
vim.opt.scrolloff = 8
--------------------------------------------------- PLUGINS ---------------------------------------------------

--lazy e tutti i plug-in
require("config.plugins")

--colorscheme
require("config.colorscheme")

--telescope
require("config.telescope")

--key mappings
require("config.keymaps")

--python LSP
require("config.python")

--cmp
require("config.cmp")
