local M = {}

M.config = {
    filter_rules = {
        include_current_win = false,
        autoselect_one = true,
        -- filter using buffer options
        bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { 'neo-tree', "neo-tree-popup", "notify" },
            -- if the buffer type is one of following, the window will be ignored
            buftype = { 'terminal', "quickfix" },
        }
    }
}

return M
