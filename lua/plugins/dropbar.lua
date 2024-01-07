return {
    "Bekaboo/dropbar.nvim",
    dependencies = "nvim-telescope/telescope-fzf-native.nvim",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    opts = {
        icons = {
            ui = {
                bar = {
                    separator = " 󰁔 ",
                },
            },
        },
    },
}
