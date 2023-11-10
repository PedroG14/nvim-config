---------------------
-- NEOVIM SETTINGS --
---------------------

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
opt.shiftwidth = 4
opt.tabstop = 4
opt.autoindent = true
opt.smartindent = true
opt.mouse = 'a'
opt.mousemev = true
opt.termguicolors = true
opt.backup = false
opt.writebackup = false
opt.signcolumn = 'yes'
opt.cursorline = true

-- Loading Lazy + Plugins...
require('plugins')

-- Changing DiagnosticSign background
vim.cmd('autocmd colorscheme gruvbox :hi SignColumn guibg=NONE')

-- Defining colorscheme
vim.cmd.colorscheme('gruvbox')
