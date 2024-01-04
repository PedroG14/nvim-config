return {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = function()
        local symbols = require("core.utils").diagnostic_icons
        return {
            options = {
                disabled_filetypes = {
                    statusline = { "dashboard" }
                }
            },
            sections = {
                lualine_b = { "branch", "diff",
                    {
                        "diagnostics",
                        symbols = {
                            error = symbols.Error,
                            warn =  symbols.Warn,
                            hint =  symbols.Hint,
                            info =  symbols.Info
                        }
                    }
                }
            },
            extensions = {
                "lazy",
                "mason",
                "neo-tree",
                "trouble",
                "fugitive"
            }
        }
    end
}
