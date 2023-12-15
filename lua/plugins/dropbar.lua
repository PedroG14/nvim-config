return {
    "Bekaboo/dropbar.nvim",
    dependencies = "nvim-telescope/telescope-fzf-native.nvim",
    event = { "BufNewFile", "BufReadPre" },
    opts = {
        icons = {
            ui = {
                bar = {
                    separator = "  "
                }
            }
        }
    }
}
