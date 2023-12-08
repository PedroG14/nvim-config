return {
    'folke/trouble.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    cmd = { 'Trouble', 'TroubleToggle' },
    keys = {
        { '<leader>xx', '<Cmd>TroubleToggle<CR>', desc = '' },
        { '<leader>xw', '<Cmd>TroubleToggle workspace_diagnostics<CR>', desc = '' },
        { '<leader>xd', '<Cmd>TroubleToggle document_diagnostics<CR>', desc = '' },
        { '<leader>xq', '<Cmd>TroubleToggle quickfix<CR>', desc = '' },
        { '<leader>xl', '<Cmd>TroubleToggle loclist<CR>', desc = '' },
        { 'gR', '<Cmd>TroubleToggle lsp_references<CR>', desc = '' },
    },
    config = function()
        local trouble = require('trouble')

        local opts = {}

        trouble.setup(opts)
    end
}
