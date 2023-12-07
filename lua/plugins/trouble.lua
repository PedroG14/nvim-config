return {
    'folke/trouble.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    cmd = { 'Trouble', 'TroubleToggle' },
    keys = {
        { '<leader>xx', function()
            local trouble = require('trouble')
            trouble.toggle()
        end, desc = 'Toggle Trouble' },
        { '<leader>xw', function()
            local trouble = require('trouble')
            trouble.toggle('workspace_diagnostics')
        end, desc = 'Trouble Workspace Diagnostics' },
        { '<leader>xd', function()
            local trouble = require('trouble')
            trouble.toggle('document_diagnostics')
        end, desc = 'Trouble Documents Diagnostics' },
        { '<leader>xq', function()
            local trouble = require('trouble')
            trouble.toggle('quickfix')
        end, desc = 'Trouble Quickfix' },
        { '<leader>xl', function()
            local trouble = require('trouble')
            trouble.toggle('loclist')
        end, desc = 'Trouble Loclist' },
        { 'gR', function()
            local trouble = require('trouble')
            trouble.toggle('lsp_references')
        end, desc = 'Trouble LSP References' },
    },
    config = function()
        local trouble = require('trouble')

        local opts = {}

        trouble.setup(opts)
    end
}
