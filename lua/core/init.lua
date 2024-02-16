-----------------------
--  Neovim settings --
-----------------------

local opts = require("core.config").opts
local keymaps = require("core.keymaps")

-- Setting up Neovim opts
for opt, value in pairs(opts) do
    vim.opt[opt] = value
end

-- Setting up keymaps
for _, map in ipairs(keymaps) do
    vim.keymap.set(map[1], map[2], map[3], map[4] or {})
end

-- Bootstrapping lazy.nvim + plugins
require("core.lazy")
