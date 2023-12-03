return {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    keys = {
        { '<leader>n', '<Cmd>NvimTreeFindFileToggle<CR>', desc = 'Toggle Nvim-Tree' }
    },
    config = function()
        local nvim_tree = require('nvim-tree')

        local opts = {
            renderer = {
                indent_markers = {
                    enable = true
                },
                icons = {
                    symlink_arrow = ' -> '
                },
                highlight_diagnostics = true
            },
            diagnostics = {
                enable = true,
                icons = {
                    error    = ' ',
                    warning  = ' ',
                    hint     = ' ',
                    info     = ' ',
                }
            }
        }

        nvim_tree.setup(opts)
    end
}
