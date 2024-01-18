return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    ft = "norg",
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        notes = "~/Documentos/Anotações",
                    },
                },
            },
        },
    },
}
