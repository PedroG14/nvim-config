-----------------------
-- 󰒓 Neovim settings --
-----------------------

local opt = vim.opt
local g = vim.g

-- Mapleader -> <Space>
g.mapleader = " "

opt.bg = "dark"
opt.termguicolors = true

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.autoindent = true
opt.smartindent = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.signcolumn = "yes"

opt.cursorline = true
opt.cursorlineopt = "line"

opt.scrolloff = 4

opt.showmode = false

opt.updatetime = 200
