return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "s1n7ax/nvim-window-picker",
    },
    lazy = false,
    keys = {
        {
            "<Leader>n",
            function()
                require("neo-tree.command").execute({
                    action = "focus",
                    source = "filesystem",
                    position = "left",
                    toggle = true,
                    reveal = true,
                })
            end,
            desc = "Neo-Tree Toggle",
        },
    },
    opts = function()
        local icons = require("core.utils").diagnostic_icons
        return {
            popup_border_style = "single",
            default_component_configs = {
                diagnostics = {
                    symbols = {
                        error = icons.Error,
                        hint = icons.Hint,
                        info = icons.Info,
                        warn = icons.Warn,
                    },
                    highlights = {
                        error = "DiagnosticSignError",
                        hint = "DiagnosticSignHint",
                        info = "DiagnosticSignInfo",
                        warn = "DiagnosticSignWarn",
                    },
                },
                indent = {
                    with_expanders = true,
                },
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                },
                bind_to_cwd = false,
                follow_current_file = { enabled = true },
                use_libuv_file_watcher = true,
            },
            window = {
                mappings = {
                    ["S"] = "split_with_window_picker",
                    ["s"] = "vsplit_with_window_picker",
                },
            },
        }
    end,
}
