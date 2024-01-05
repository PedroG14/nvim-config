local event = {
    "BufNewFile",
    "BufWritePre",
    "BufReadPost"
}

return {
    {
        "lewis6991/gitsigns.nvim",
        event = event,
        opts = {}
    },

    {
        "tpope/vim-fugitive",
        event = event,
        cmd = "Git"
    }
}
