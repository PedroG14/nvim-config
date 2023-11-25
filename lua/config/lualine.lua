local M = {}

M.config = {
    options = {
        disabled_filetypes = {
            statusline = { 'dashboard' },
            winbar = { 'dashboard' }
        }
    },
    extensions = { 'lazy', 'fugitive', 'mason', 'neo-tree', 'trouble' }
}

return M
