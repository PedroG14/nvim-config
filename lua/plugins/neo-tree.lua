return {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        {
            "s1n7ax/nvim-window-picker",
            version = "2.*",
            config = function()
                require("window-picker").setup({
                    filter_rules = {
                        include_current_win = false,
                        autoselect_one = true,
                        -- filter using buffer options
                        bo = {
                            -- if the file type is one of following, the window will be ignored
                            filetype = {
                                "neo-tree",
                                "neo-tree-popup",
                                "notify",
                            },
                            -- if the buffer type is one of following, the window will be ignored
                            buftype = { "terminal", "quickfix" },
                        },
                    },
                })
            end,
        },
    },
    keys = {
        {
            "<leader>n",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                })
            end,
            desc = "Neo-Tree Toggle",
        },
    },
    opts = {
        default_component_configs = {
            indent = {
                with_expanders = true,
            },
        },
        window = {
            mappings = {
                ["S"] = "split_with_window_picker",
                ["s"] = "vsplit_with_window_picker",
            },
        },
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
            },
        },
    },
}
