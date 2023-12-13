return {
    "NvChad/nvim-colorizer.lua",
    event = { "BufNewFile", "BufReadPre" },
    config = function()
        local colorizer = require("colorizer")

        local opts = {
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

        colorizer.setup(opts)
    end
}
