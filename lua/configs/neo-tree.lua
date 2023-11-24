local M = {}

M.config = {
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
        hijack_netrw_behavior = 'open_current'
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

return M
