---------------------
-- 󰒓 Neovim config --
---------------------

local opt = vim.opt

opt.autoindent = true
opt.bg = "dark"
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.cursorlineopt = "line"
opt.expandtab = true
opt.hlsearch = false
opt.incsearch = true
opt.laststatus = 3
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.shiftwidth = 4
opt.showmode = false
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartindent = true
opt.smoothscroll = true
opt.softtabstop = 4
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.tabstop = 4
opt.updatetime = 200
opt.wrap = false

local config = {
    mapleader = " ",
    colorscheme = "gruvbox",
    icons = {
        diagnostics = {
            Error = " ",
            Warn = " ",
            Hint = " ",
            Info = " ",
        },
    },
}

return config
