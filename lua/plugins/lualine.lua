return {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VimEnter",
    config = function()
        local lualine = require("lualine")

        local opts = {
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
                            error = " ",
                            warn =  " ",
                            hint =  " ",
                            info =  " "
                        }
                    }
                }
            },
            extensions = {
                "lazy",
                "mason",
                "nvim-tree",
                "trouble",
                "fugitive"
            }
        }

        lualine.setup(opts)
    end
}
