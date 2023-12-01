return {
    'folke/trouble.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    cmd = { 'Trouble', 'TroubleToggle' },
    config = function()
        local trouble = require('trouble')

        local opts = {}

        trouble.setup(opts)
    end
}
