return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost"
    },
    opts = {
        exclude = {
            filetypes = { "dashboard", "help" }
        }
    }
}
