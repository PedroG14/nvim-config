return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        }
    },
    cmd = "Telescope",
    keys = {
        { "<leader>ff", function()
            require("telescope.builtin").find_files()
        end, desc = "Telescope Find Files" },
        { "<leader>fg", function()
            require("telescope.builtin").live_grep()
        end, desc = "Telescope Live Grep" },
        { "<leader>fb", function()
            require("telescope.builtin").buffers()
        end, desc = "Telescope Buffers" },
        { "<leader>fh", function()
            require("telescope.builtin").help_tags()
        end, desc = "Telescope Help Tags" },
        { "<leader>fo", function()
            require("telescope.builtin").oldfiles()
        end, desc = "Telescope Oldfiles" }
    },
    opts = function()
        local trouble = require("trouble")
        return {
            defaults = {
                layout_strategy = "center",
                layout_config = {
                    anchor = "S",
                    height = 0.4,
                    prompt_position = "bottom",
                    preview_cutoff = 1
                },
                borderchars = {
                    prompt  = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                    results = { "─", "│", "─", "│", "┌", "┐", "┤", "├" },
                    preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                },
                prompt_prefix = "󱞩 ",
                selection_caret = "󰁔 ",
                mappings = {
                    i = {
                        ["<C-t>"] = trouble.open_with_trouble
                    },
                    n = {
                        ["<C-t>"] = trouble.open_with_trouble
                    }
                }
            },
            pickers = {
                find_files = {
                    follow = true,
                    hidden = true
                },
                fd = {
                    follow = true,
                    hidden = true
                }
            },
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case"         -- or "ignore_case" or "respect_case"
                }
            }
        }
    end,
    config = function(_, opts)
        require("telescope").setup(opts)
        require("telescope").load_extension("fzf")
    end
}
