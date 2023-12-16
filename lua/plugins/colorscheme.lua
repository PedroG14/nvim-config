return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            overrides = {
                SignColumn = { link = "Normal" },
                Delimiter  = { link = "Special" },
                Array      = { link = "GruvboxRed" },

                DiagnosticSignError = { link = "GruvboxRed" },
                DiagnosticSignWarn  = { link = "GruvboxYellow" },
                DiagnosticSignInfo  = { link = "GruvboxBlue" },
                DiagnosticSignHint  = { link = "GruvboxAqua" },
                DiagnosticSignOk    = { link = "GruvboxGreen" },

                DashboardHeader   = { link = "GruvboxBlue" },
                DashboardCenter   = { link = "GruvboxFg4" },
                DashboardShortCut = { link = "GruvboxBlue" },
                DashboardFooter   = { link = "GruvboxOrange" },

                CmpGhostText = { link = "GruvboxBg4" },

                WinBarNC = { link = "WinBar" },

                WindowPickerStatusLine   = { bg = "#3C3836", fg = "#EBDBB2", bold = true },
                WindowPickerStatusLineNC = { link = "WindowPickerStatusLine" }
            }
        },
        config = function(_, opts)
            require("gruvbox").setup(opts)
            vim.cmd.colorscheme("gruvbox")
        end
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function(_, opts)
            require("tokyonight").setup(opts)
            -- vim.cmd.colorscheme("tokyonight")
        end
    },

    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         local catppuccin = require("catppuccin")
    --
    --         local opts = {
    --             flavour = "mocha",
    --             integrations = {
    --                 cmp = true,
    --                 gitsigns = true,
    --                 nvimtree = true,
    --                 treesitter = true,
    --                 mini = true,
    --                 mason = true,
    --                 lsp_trouble = true
    --             }
    --         }
    --
    --         catppuccin.setup(opts)
    --
    --         -- vim.cmd.colorscheme("catppuccin")
    --     end
    -- }
}
