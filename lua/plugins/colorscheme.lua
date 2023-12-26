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

                WindowPickerStatusLine = {
                    bg = "#3C3836",
                    fg = "#EBDBB2",
                    bold = true
                },
                WindowPickerStatusLineNC = {
                    bg = "#3C3836",
                    fg = "#EBDBB2",
                    bold = true
                },

                TelescopeTitle = { bg = "#83A598", fg = "#282828" },
                TelescopePromptBorder  = { link = "GruvboxBg2" },
                TelescopePreviewBorder = { link = "GruvboxBg2" },
                TelescopeResultsBorder = { link = "GruvboxBg2" }
            }
        },
        config = function(_, opts)
            local gruvbox = require("gruvbox")
            gruvbox.setup(opts)
            gruvbox.load()
        end
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            on_highlights = function(hl, c)
                hl.WinBar   = { fg = c.fg_dark }
                hl.WinBarNC = { fg = c.fg_dark }
            end
        },
        config = function (_, opts)
            local tokyonight = require("tokyonight")
            tokyonight.setup(opts)
            -- tokyonight.load()
        end
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        opts = {
            flavour = "mocha",
            integrations = {
                cmp = true,
                gitsigns = true,
                neotree = true,
                treesitter = true,
                mini = true,
                mason = true,
                lsp_trouble = true,
                dropbar = true
            }
        },
        config = function (_, opts)
            local catppuccin = require("catppuccin")
            catppuccin.setup(opts)
            -- catppuccin.load()
        end
    }
}
