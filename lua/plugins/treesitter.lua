return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        "JoosepAlviste/nvim-ts-context-commentstring",
        "windwp/nvim-ts-autotag"
    },
    build = ":TSUpdate",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
        "VeryLazy"
    },
    keys = {
        { "<C-space>", desc = "Increment selection" },
        { "<bs>", desc = "Decrement selection", mode = "x" }
    },
    opts = {
        -- Base
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query"
        },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },

        -- Incremental Selection
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-space>",
                node_incremental = "<C-space>",
                scope_incremental = false,
                node_decremental = "<bs>",
            }
        },

        -- Autotag
        autotag = { enable = true },

        -- Textobjects
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = {
                        query = "@class.inner",
                        desc = "Select inner part of a class region"
                    },
                    ["as"] = {
                        query = "@scope",
                        query_group = "locals",
                        desc = "Select language scope"
                    }
                },
                selection_modes = {
                    ["@parameter.outer"] = "v", -- charwise
                    ["@function.outer"] = "V", -- linewise
                    ["@class.outer"] = "<c-v>", -- blockwise
                },
                include_surrounding_whitespace = true
            },
            swap = {
                enable = true,
                swap_next = {
                    ["<leader>a"] = "@parameter.inner",
                },
                swap_previous = {
                    ["<leader>A"] = "@parameter.inner",
                }
            },
            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist
                goto_next_start = {
                    ["]m"] = "@function.outer",
                    ["]]"] = {
                        query = "@class.outer",
                        desc = "Next class start"
                    },
                    ["]o"] = "@loop.*",
                    ["]s"] = {
                        query = "@scope",
                        query_group = "locals",
                        desc = "Next scope"
                    },
                    ["]z"] = {
                        query = "@fold",
                        query_group = "folds",
                        desc = "Next fold"
                    },
                },
                goto_next_end = {
                    ["]M"] = "@function.outer",
                    ["]["] = "@class.outer",
                },
                goto_previous_start = {
                    ["[m"] = "@function.outer",
                    ["[["] = "@class.outer",
                },
                goto_previous_end = {
                    ["[M"] = "@function.outer",
                    ["[]"] = "@class.outer",
                },
                goto_next = {
                    ["]d"] = "@conditional.outer",
                },
                goto_previous = {
                    ["[d"] = "@conditional.outer",
                }
            },
            lsp_interop = {
                enable = true,
                border = "none",
                floating_preview_opts = {},
                peek_definition_code = {
                    ["<leader>df"] = "@function.outer",
                    ["<leader>dF"] = "@class.outer",
                }
            }
        }
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end
}
