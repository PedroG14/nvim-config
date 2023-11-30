return {
    's1n7ax/nvim-window-picker',
    version = '2.*',
    config = function()
        local window_picker = require('window-picker')

        local opts = {
            filter_rules = {
                include_current_win = false,
                autoselect_one = true,
                -- filter using buffer options
                bo = {
                    -- if the file type is one of following, the window will be ignored
                    filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
                    -- if the buffer type is one of following, the window will be ignored
                    buftype = { 'terminal', 'quickfix' },
                }
            }
        }

        window_picker.setup(opts)
    end
}
