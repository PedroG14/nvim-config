return {
    'stevearc/aerial.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'neovim/nvim-lspconfig',
        'nvim-tree/nvim-web-devicons'
    },
    cmd = { 'AerialToggle', 'AerialInfo', 'AerialPrev', 'AerialNext' },
    keys = {
        { '{', function()
            local api = require('aerial.api')
            api.prev()
        end, desc = 'Aerial Previous Symbol' },
        { '}', function()
            local api = require('aerial.api')
            api.next()
        end, desc = 'Aerial Next Symbol' },
        { '<leader>a', function()
            local api = require('aerial.api')
            api.toggle({
                focus = false,
                direction = 'right'
            })
        end, desc = 'Aerial Toggle' }
    },
    config = function()
        local aerial = require('aerial')

        local opts = {
            backends = { 'lsp', 'treesitter', 'markdown', 'man' },
            lazy_load = false,
            filter_kind = false
        }

        aerial.setup(opts)
    end
}
