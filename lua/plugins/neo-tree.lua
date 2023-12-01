return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    cmd = 'Neotree',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        -- 's1n7ax/nvim-window-picker',
    },
    init = function()
        if vim.fn.argc(-1) == 1 then
            local stat = vim.loop.fs_stat(vim.fn.argv(0))
            if stat and stat.type == 'directory' then
                require('neo-tree')
            end
        end
    end,
    config = function()
        local neo_tree = require('neo-tree')

        local opts = {
            default_component_configs = {
                indent = {
                    with_expanders = true,
                    expander_collapsed = '',
                    expander_expanded = '',
                },
            },
            filesystem = {
                bind_to_cwd = false,
                follow_current_file = { enabled = true },
                use_libuv_file_watcher = true,
                hijack_netrw_behavior = 'open_current',
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                },
            },
            window = {
                width = 30,
                -- mappings = {
                --     ['S'] = 'split_with_window_picker',
                --     ['s'] = 'vsplit_with_window_picker',
                -- },
            },
        }

        neo_tree.setup(opts)
    end,
}
