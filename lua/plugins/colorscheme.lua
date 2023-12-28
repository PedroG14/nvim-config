return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            overrides = {
                -- Base Neovim
                SignColumn = { link = "Normal" },
                Delimiter  = { link = "Special" },
                Array      = { link = "GruvboxRed" },

                FloatTitle  = { bg = "#83A598", fg = "#282828" },
                FloatBorder = { link = "GruvboxBg3" },
                NormalFloat = { link = "Normal" },

                DiagnosticSignError = { link = "GruvboxRed" },
                DiagnosticSignWarn  = { link = "GruvboxYellow" },
                DiagnosticSignInfo  = { link = "GruvboxBlue" },
                DiagnosticSignHint  = { link = "GruvboxAqua" },
                DiagnosticSignOk    = { link = "GruvboxGreen" },

                WinBarNC = { link = "WinBar" },

                -- Plugins
                CmpGhostText = { link = "GruvboxBg4" },

                DashboardHeader   = { link = "GruvboxBlue" },
                DashboardCenter   = { link = "GruvboxFg4" },
                DashboardShortCut = { link = "GruvboxBlue" },
                DashboardFooter   = { link = "GruvboxOrange" },

                NeoTreeExpander     = { link = "GruvboxBg3" },
                NeoTreeIndentMarker = { link = "GruvboxBg2" },
                NeoTreeFloatTitle   = { link = "FloatTitle" },

                TelescopeTitle = { bg = "#83A598", fg = "#282828" },
                TelescopePromptBorder  = { link = "GruvboxBg3" },
                TelescopePreviewBorder = { link = "GruvboxBg3" },
                TelescopeResultsBorder = { link = "GruvboxBg3" },

                WindowPickerStatusLine = {
                    bg = "#3C3836",
                    fg = "#EBDBB2",
                    bold = true
                },
                WindowPickerStatusLineNC = {
                    bg = "#3C3836",
                    fg = "#EBDBB2",
                    bold = true
                }
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
