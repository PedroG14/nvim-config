return {
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local gruvbox = require('gruvbox')

            local opts = {
                overrides = {
                    SignColumn = { bg = '' },

                    DiagnosticSignError = { bg = '', fg = '#FB4934' },
                    DiagnosticSignWarn  = { bg = '', fg = '#FABD2F' },
                    DiagnosticSignHint  = { bg = '', fg = '#83A598' },
                    DiagnosticSignInfo  = { bg = '', fg = '#8EC07C' },
                    DiagnosticSignOk    = { bg = '', fg = '#B8BB26' },

                    DashboardHeader   = { fg = '#83A598' },
                    DashboardShortCut = { fg = '#83A598' },
                    DashboardFooter   = { fg = '#FE8019' },
                }
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
    }
}
