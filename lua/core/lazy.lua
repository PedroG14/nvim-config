-----------------
-- 󰒲 lazy.nvim --
-----------------

-- Bootstrapping lazy.nvim...
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim settings
local config = {
    install = {
        colorscheme = { require("core.config").colorscheme },
    },
    ui = {
        icons = {
            loaded = "󰱒",
            not_loaded = "󰄱",
        },
        backdrop = 100,
    },
    performance = {
        rtp = {
            disabled_plugins = {
                -- "gzip",
                -- "matchit",
                -- "matchparen",
                "netrwPlugin",
                -- "tarPlugin",
                -- "tohtml",
                -- "tutor",
                -- "zipPlugin"
            },
        },
    },
}

-- Loading plugins...
require("lazy").setup("plugins", config)
