-----------------------
-- 󰒓 Neovim settings --
-----------------------

local o = vim.o
local g = vim.g

g.mapleader = ' '
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

require('lazy.bootstrap')

-- Neovim options
o.bg = 'dark'

o.number = true
o.relativenumber = true

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true

o.autoindent = true
o.smartindent = true

o.wrap = false

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.signcolumn = 'yes'
o.cursorline = true
o.cursorlineopt = 'line'
