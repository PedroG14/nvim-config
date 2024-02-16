return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    keys = {
        { "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "Nvim-Tree Toggle" },
    },
    opts = function()
        local icons = require("core.config").icons.diagnostics
        return {
            filters = {
                git_ignored = false,
            },
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    symlink_arrow = " 󰁔 ",
                    glyphs = {
                        git = {
                            unstaged = "󰄱",
                            staged = "",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "",
                            deleted = "✖",
                            ignored = "",
                        },
                    },
                },
            },
            diagnostics = {
                enable = true,
                icons = {
                    error = icons.Error,
                    info = icons.Info,
                    hint = icons.Hint,
                    warning = icons.Warn,
                },
            },
        }
    end,
}
