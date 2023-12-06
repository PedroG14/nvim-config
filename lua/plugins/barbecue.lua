return {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
        'SmiteshP/nvim-navic',
        'nvim-tree/nvim-web-devicons'
    },
    event = { 'BufNewFile', 'BufReadPre' },
    config = function()
        local barbecue = require('barbecue')

        local opts = {
            symbols = {
                ellipsis = '...',
                separator = ''
            }
        }

        barbecue.setup(opts)
    end
}
