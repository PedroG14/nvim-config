-----------------------
-- 󰢱 Neovim init.lua --
-----------------------

local opts = require("config").opt
local colorscheme = require("config").colorscheme

-- Setting up Neovim opts
for opt, value in pairs(opts) do
    vim.opt[opt] = value
end

-- Setting up keymaps
require("config.keymaps")

-- Bootstrapping lazy.nvim + plugins
require("config.lazy")

-- Setting up colorscheme
vim.cmd.colorscheme(colorscheme)
