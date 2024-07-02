return {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VimEnter",
    opts = function()
        local symbols = require("core.config").icons.diagnostics
        return {
            sections = {
                lualine_b = {
                    "branch",
                    "diff",
                    {
                        "diagnostics",
                        symbols = {
                            error = symbols.Error,
                            warn = symbols.Warn,
                            hint = symbols.Hint,
                            info = symbols.Info,
                        },
                    },
                },
            },
            extensions = {
                "lazy",
                "mason",
                "neo-tree",
                "trouble",
            },
        }
    end,
}
