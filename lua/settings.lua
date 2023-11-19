-----------------------
-- 󰒓 NEOVIM SETTINGS --
-----------------------

local opt = vim.opt
local g = vim.g

-- Defining space as <LEADER>
g.mapleader = ' '

-- Nvim-Tree: Disabling netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Neovim options
opt.bg = 'dark'

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.autoindent = true
opt.smartindent = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.signcolumn = 'yes'
opt.cursorline = true
