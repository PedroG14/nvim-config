---------------------
-- 󰒓 Neovim config --
---------------------

local config = {
    opts = {
        autoindent = true,
        bg = "dark",
        cursorline = true,
        cursorlineopt = "line",
        expandtab = true,
        hlsearch = false,
        incsearch = true,
        laststatus = 3,
        number = true,
        relativenumber = true,
        scrolloff = 4,
        shiftwidth = 4,
        showmode = false,
        sidescrolloff = 8,
        signcolumn = "yes",
        smartindent = true,
        softtabstop = 4,
        splitbelow = true,
        splitkeep = "screen",
        splitright = true,
        tabstop = 4,
        termguicolors = true,
        updatetime = 200,
        wrap = false,
    },
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

if vim.fn.has("nvim-0.10") == 1 then
    config.opts.smoothscroll = true
end

return config
