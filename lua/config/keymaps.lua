----------------------
-- 󰌌 Neovim keymaps --
----------------------

-- Mapleader => <space>
vim.g.mapleader = require("config").mapleader
vim.g.maplocalleader = require("config").maplocalleader

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<c-d>", "<c-d>zz", opts)
keymap.set("n", "<c-u>", "<c-u>zz", opts)

keymap.set({ "n", "t" }, "<c-h>", "<c-w>h", opts)
keymap.set({ "n", "t" }, "<c-j>", "<c-w>j", opts)
keymap.set({ "n", "t" }, "<c-k>", "<c-w>k", opts)
keymap.set({ "n", "t" }, "<c-l>", "<c-w>l", opts)

keymap.set("v", ">", ">gv", opts)
keymap.set("v", "<", "<gv", opts)
