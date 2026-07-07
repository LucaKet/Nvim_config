--OPZIONI
--finding path across linux and mac
vim.env.PATH = vim.env.PATH .. ':' .. vim.fn.expand('~/.local/bin')

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

--cursorline globally highlighted
vim.opt.cursorline = true

--python provider
vim.g.python3_host_prog = '/Users/luca/anaconda3/bin/python3'

--conceallevel for viewing markdown files
vim.opt.conceallevel = 2
--------------------------------------------------- PLUGINS ---------------------------------------------------

--lazy e tutti i plug-in
require("config.plugins")

--key mappings
require("config.keymaps")

--transparency option
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' }) -- Non-current windows
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
