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
                    glyphs = {
                        git = {
                            unstaged  = '󰅖',
                            staged    = '󰄬',
                            untracked = '󰐕',
                            deleted   = '󰍴'
                        }
                    }
                }
            }
        }

        nvim_tree.setup(opts)
    end
}
