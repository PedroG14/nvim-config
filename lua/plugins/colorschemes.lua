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
                    DiagnosticSignError = { fg = c.bright_red },
                    DiagnosticSignWarn = { fg = c.bright_yellow },
                    DiagnosticSignInfo = { fg = c.bright_blue },
                    DiagnosticSignHint = { fg = c.bright_aqua },
                    DiagnosticSignOk = { fg = c.bright_green },

                    NormalFloat = { bg = c.dark0, fg = c.light1 },
                    FloatBorder = { bg = c.dark0, fg = c.dark4 },
                    FloatTitle = { bg = c.bright_blue, fg = c.dark0 },

                    SignColumn = { bg = c.dark0 },

                    WinBarNC = { bg = c.dark0, fg = c.light4 },

                    -- Plugin highlights
                    BufferLineOffset = { fg = c.bright_blue, bold = true },

                    CmpGhostText = { fg = c.dark4 },

                    DashboardHeader = { fg = c.bright_blue },
                    DashboardCenter = { fg = c.light4 },
                    DashboardShortCut = { fg = c.bright_blue },
                    DashboardFooter = { fg = c.bright_orange },

                    LazyNormal = { bg = c.dark1, fg = c.light1 },

                    MasonNormal = { bg = c.dark1, fg = c.light1 },

                    NeoTreeBufferNumber = { fg = c.bright_orange },
                    NeoTreeCursorLine = { link = "CursorLine" },
                    NeoTreeDimText = { fg = c.gray },
                    NeoTreeDirectoryIcon = { fg = c.bright_blue },
                    NeoTreeDirectoryName = { fg = c.light1 },
                    NeoTreeDotfile = { fg = c.gray },
                    NeoTreeFileIcon = { fg = c.bright_blue },
                    NeoTreeFileName = { fg = c.light1 },
                    -- NeoTreeFileNameOpened = {},
                    NeoTreeFilterTerm = { fg = c.bright_green },
                    NeoTreeFloatBorder = { link = "FloatBorder" },
                    NeoTreeFloatTitle = { link = "FloatTitle" },
                    NeoTreeTitleBar = { bg = c.dark4, fg = c.dark0 },

                    NeoTreeGitAdded = { fg = c.bright_green },
                    NeoTreeGitConflict = { fg = c.bright_yellow },
                    NeoTreeGitDeleted = { fg = c.bright_red },
                    NeoTreeGitIgnored = { fg = c.gray },
                    NeoTreeGitModified = { fg = c.bright_orange },
                    NeoTreeGitUnstaged = { fg = c.bright_orange },
                    NeoTreeGitUntracked = { fg = c.bright_purple },
                    NeoTreeGitStaged = { fg = c.bright_green },
                    NeoTreeHiddenByName = { fg = c.gray },
                    NeoTreeIndentMarker = { link = "NonText" },
                    NeoTreeExpander = { fg = c.dark4 },
                    NeoTreeNormal = { link = "Normal" },
                    NeoTreeNormalNC = { link = "NormalNC" },
                    NeoTreeSignColumn = { link = "SignColumn" },
                    NeoTreeStats = { fg = c.dark4 },
                    NeoTreeStatsHeader = { fg = c.dark4, bold = true },
                    NeoTreeStatusLine = { link = "StatusLine" },
                    NeoTreeStatusLineNC = { link = "StatusLine" },
                    NeoTreeVertSplit = { link = "VertSplit" },
                    NeoTreeWinSeparator = { link = "WinSeparator" },
                    NeoTreeEndOfBuffer = { link = "EndOfBuffer" },
                    NeoTreeRootName = { fg = c.bright_blue, bold = true },
                    NeoTreeSymbolicLinkTarget = {
                        fg = c.bright_blue,
                        bold = true,
                    },
                    NeoTreeWindowsHidden = { fg = c.gray },
                    NeoTreeMessage = { fg = c.gray },
                    NeoTreeTabActive = {
                        bg = c.dark1,
                        fg = c.bright_blue,
                        bold = true,
                    },
                    NeoTreeTabInactive = { fg = c.gray },
                    NeoTreeTabSeparatorActive = {
                        bg = c.dark1,
                        fg = c.bright_blue,
                    },
                    NeoTreeTabSeparatorInactive = {
                        bg = c.dark0,
                        fg = c.gray,
                    },
                    NeoTreeModified = { fg = c.bright_yellow },

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

    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
}
