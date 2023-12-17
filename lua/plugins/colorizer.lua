return {
    "NvChad/nvim-colorizer.lua",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost"
    },
    opts = {
        filetypes = {
            "*",
            "!lazy",
            "!mason"
        },
        user_default_options = {
            RRGGBBAA = true,
            AARRGGBB = true,
            css = true
        }
    }
}
