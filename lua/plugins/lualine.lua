return {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    opts = function()
        local symbols = require("core.config").icons.diagnostics
        return {
            options = {
                disabled_filetypes = {
                    statusline = { "dashboard" },
                },
            },
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
                "nvim-tree",
                "trouble",
            },
        }
    end,
}
