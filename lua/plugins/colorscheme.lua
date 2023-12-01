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

                    WindowPickerStatusLine   = { bg = '#3C3836', fg = '#EBDBB2' },
                    WindowPickerStatusLineNC = { bg = '#282828', fg = '#EBDBB2' },
                    WindowPickerWinBar       = { bg = '#3C3836', fg = '#EBDBB2' },
                    WindowPickerWinBarNC     = { bg = '#282828', fg = '#EBDBB2' }
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
