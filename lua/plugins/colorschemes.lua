return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = function()
            local c = require("gruvbox").palette
            return {
                overrides = {
                    -- Base highlights
                    SignColumn = { bg = c.dark0, fg = c.light1 },
                    Delimiter = { fg = c.bright_orange },
                    Array = { fg = c.bright_red },

                    FloatTitle = {
                        bg = c.bright_blue,
                        fg = c.dark0,
                    },
                    FloatBorder = { fg = c.dark3 },
                    NormalFloat = { bg = c.dark0, fg = c.light1 },

                    DiagnosticSignError = { fg = c.bright_red },
                    DiagnosticSignWarn = { fg = c.bright_yellow },
                    DiagnosticSignInfo = { fg = c.bright_blue },
                    DiagnosticSignHint = { fg = c.bright_aqua },
                    DiagnosticSignOk = { fg = c.bright_green },

                    WinBar = { fg = c.light4 },
                    WinBarNC = { fg = c.light4 },

                    -- Plugin highlights
                    CmpGhostText = { fg = c.dark4 },

                    DashboardHeader = { fg = c.bright_blue },
                    DashboardCenter = { fg = c.light4 },
                    DashboardShortCut = { fg = c.bright_blue },
                    DashboardFooter = { fg = c.bright_orange },

                    NvimTreeIndentMarker = { fg = c.dark2 },
                    NvimTreeFolderArrowClosed = { fg = c.dark4 },
                    NvimTreeFolderArrowOpen = { fg = c.dark4 },

                    TelescopeTitle = { bg = c.bright_blue, fg = c.dark0 },
                    TelescopePromptBorder = { fg = c.dark2 },
                    TelescopePreviewBorder = { fg = c.dark2 },
                    TelescopeResultsBorder = { fg = c.dark2 },

                    WindowPickerStatusLine = {
                        bg = c.dark1,
                        fg = c.light1,
                        bold = true,
                    },
                    WindowPickerStatusLineNC = {
                        bg = c.dark1,
                        fg = c.light1,
                        bold = true,
                    },
                },
            }
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            on_highlights = function(hl, c)
                hl.WinBar = { fg = c.fg_dark }
                hl.WinBarNC = { fg = c.fg_dark }
            end,
        },
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
                dashboard = true,
                gitsigns = true,
                indent_blankline = true,
                lsp_trouble = true,
                mason = true,
                mini = true,
                nvimtree = true,
                notify = true,
                telescope = true,
                treesitter = true,
                which_key = true,
            },
        },
    },
}
