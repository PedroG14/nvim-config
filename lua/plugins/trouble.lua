return {
    'folke/trouble.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    cmd = { 'Trouble', 'TroubleToggle' },
    keys = {
        { '<leader>xx', function()
            require('trouble').toggle()
        end, desc = '' },
        { '<leader>xw', function()
            require('trouble').toggle('workspace_diagnostics')
        end, desc = '' },
        { '<leader>xd', function()
            require('trouble').toggle('document_diagnostics')
        end, desc = '' },
        { '<leader>xq', function()
            require('trouble').toggle('quickfix')
        end, desc = '' },
        { '<leader>xl', function()
            require('trouble').toggle('loclist')
        end, desc = '' },
        { 'gR', function()
            require('trouble').toggle('lsp_references')
        end, desc = '' },
    },
    config = function()
        local trouble = require('trouble')

        local opts = {}

        trouble.setup(opts)
    end
}
