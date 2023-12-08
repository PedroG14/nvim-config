return {
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local gruvbox = require('gruvbox')

            local opts = {
                overrides = {
                    SignColumn = { link = 'Normal' },

                    DiagnosticSignError = { link = 'GruvboxRed' },
                    DiagnosticSignWarn  = { link = 'GruvboxYellow' },
                    DiagnosticSignInfo  = { link = 'GruvboxBlue' },
                    DiagnosticSignHint  = { link = 'GruvboxAqua' },
                    DiagnosticSignOk    = { link = 'GruvboxGreen' },

                    DashboardHeader   = { link = 'GruvboxBlue' },
                    DashboardShortCut = { link = 'GruvboxBlue' },
                    DashboardFooter   = { link = 'GruvboxOrange' },

                    NvimTreeNormal = { bg = '#32302F' },
                    NvimTreeIndentMarker = { link = 'GruvboxBg2' },
                    NvimTreeWinSeparator = { bg = '#282828', fg = '#282828' },

                    GruvboxBLOffset = { bg = '#32302F', fg = '#83A598', bold = true }
                },
            }

            gruvbox.setup(opts)

            vim.cmd.colorscheme('gruvbox')
        end
    },

    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local tokyonight = require('tokyonight')

            local opts = {}

            tokyonight.setup(opts)

            -- vim.cmd.colorscheme('tokyonight')
        end
    },

    {
        'catppuccin/nvim',
        name = 'catppuccin',
        lazy = false,
        priority = 1000,
        config = function()
            local catppuccin = require('catppuccin')

            local opts = {
                flavour = 'mocha',
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    mini = true,
                    mason = true,
                    lsp_trouble = true
                }
            }

            catppuccin.setup(opts)

            -- vim.cmd.colorscheme('catppuccin')
        end
    }
}
