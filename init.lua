-----------------------
-- 󰢱 Neovim init.lua --
-----------------------

local opts = require("core.config").opt
local colorscheme = require("core.config").colorscheme

-- Setting up Neovim opts
for opt, value in pairs(opts) do
    vim.opt[opt] = value
end

-- Setting up keymaps
require("core.keymaps")

-- Bootstrapping lazy.nvim + plugins
require("core.lazy")

-- Setting up colorscheme
vim.cmd.colorscheme(colorscheme)
