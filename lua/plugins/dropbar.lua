return {
    'Bekaboo/dropbar.nvim',
    dependencies = {
        'nvim-telescope/telescope-fzf-native.nvim'
    },
    config = function()
        local dropbar = require('dropbar')

        local opts = {
            icons = {
                ui = {
                    bar = {
                        separator = '  '
                    }
                }
            }
        }

        dropbar.setup(opts)
    end
}
