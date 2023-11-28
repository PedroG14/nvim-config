return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        's1n7ax/nvim-window-picker',
    },
    config = function()
        local neo_tree = require('neo-tree')

        local opts = {
            default_component_configs = {
                indent = {
                    indent_size = 2,
                    with_expanders = true,
                    expander_collapsed = '',
                    expander_expanded = '',
                }
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false
                },
                hijack_netrw_behavior = 'open_current',
                use_libuv_file_watcher = true
            },
            window = {
                position = 'left',
                width = 32,
                mappings = {
                    ['S'] = 'split_with_window_picker',
                    ['s'] = 'vsplit_with_window_picker',
                }
            }
        }

        neo_tree.setup(opts)
    end
}
