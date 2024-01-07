return {
    {
        "echasnovski/mini.comment",
        event = {
            "BufNewFile",
            "BufWritePre",
            "BufReadPost",
        },
        opts = {},
    },

    {
        "JoosepAlviste/nvim-ts-context-commentstring",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "echasnovski/mini.comment",
        },
        event = {
            "BufNewFile",
            "BufWritePre",
            "BufReadPost",
        },
        opts = {},
    },
}
