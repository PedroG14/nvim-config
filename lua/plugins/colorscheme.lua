return {
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local gruvbox = require('gruvbox')

            local opts = {
                overrides = {
                    SignColumn = { bg = '#282828' },

                    DiagnosticSignError = { link = 'GruvboxRed' },
                    DiagnosticSignWarn  = { link = 'GruvboxYellow' },
                    DiagnosticSignInfo  = { link = 'GruvboxBlue' },
                    DiagnosticSignHint  = { link = 'GruvboxAqua' },
                    DiagnosticSignOk    = { link = 'GruvboxGreen' },

                    DashboardHeader   = { link = 'GruvboxBlue' },
                    DashboardShortCut = { link = 'GruvboxBlue' },
                    DashboardFooter   = { link = 'GruvboxOrange' },

                    NvimTreeNormal       = { link = 'GruvboxFg2' },
                    NvimTreeIndentMarker = { link = 'GruvboxBg2' }
                }
            }

            gruvbox.setup(opts)

            -- vim.cmd.colorscheme('gruvbox')
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
                    lsp_trouble = true,
                    indent_blankline = { enabled = true },
                    telescope = true
                }
            }

            catppuccin.setup(opts)

            vim.cmd.colorscheme('catppuccin')
        end
    }
}
