return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = {
        "BufNewFile",
        "BufReadPre",
    },
    opts = {
        exclude = {
            filetypes = { "dashboard", "help" },
        },
    },
}
