-----------------------
-- 󰢱 Neovim init.lua --
-----------------------

local colorscheme = require("config").colorscheme

-- Setting up Neovim opts
require("config.opts")

-- Setting up keymaps
require("config.keymaps")

-- Bootstrapping lazy.nvim + plugins
require("config.lazy")

-- Setting up colorscheme
vim.cmd.colorscheme(colorscheme)
