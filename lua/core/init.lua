-----------------------
--  Neovim settings --
-----------------------

local opts = require("core.config").opts

-- Setting up Neovim opts
for opt, value in pairs(opts) do
    vim.opt[opt] = value
end

-- Setting up keymaps
require("core.keymaps")

-- Bootstrapping lazy.nvim + plugins
require("core.lazy")
