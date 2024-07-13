---------------------
-- 󰒓 Neovim config --
---------------------

return {
    mapleader = " ",
    maplocalleader = "\\",
    colorscheme = "gruvbox",
    icons = {
        diagnostics = {
            Error = " ",
            Warn = " ",
            Hint = " ",
            Info = " ",
        },
    },
    opt = {
        autoindent = true,
        bg = "dark",
        clipboard = "unnamedplus",
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
        smoothscroll = true,
        softtabstop = 4,
        splitbelow = true,
        splitkeep = "screen",
        splitright = true,
        tabstop = 4,
        updatetime = 200,
        wrap = false,
    },
}
