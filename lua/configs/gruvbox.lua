local M = {}

M.config = {
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

return M
