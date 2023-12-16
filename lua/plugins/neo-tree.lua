return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "s1n7ax/nvim-window-picker"
    },
    lazy = false,
    keys = {
        { "<leader>n", function()
            require("neo-tree.command").execute({
                action = "focus",
                source = "filesystem",
                position = "left",
                toggle = true,
                reveal = true
            })
        end, desc = "Neo-Tree Toggle" }
    },
    opts = {
        default_component_configs = {
            indent = {
                with_expanders = true
            }
        },
        filesystem = {
            filtered_items = {
                hide_dotfiles = false
            },
            bind_to_cwd = false,
            follow_current_file = { enabled = true },
            use_libuv_file_watcher = true
        },
        window = {
            mappings = {
                ["S"] = "split_with_window_picker",
                ["s"] = "vsplit_with_window_picker"
            }
        }
    }
}
