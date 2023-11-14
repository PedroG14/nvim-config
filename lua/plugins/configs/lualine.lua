local M = {}

M.config = {
    options = {
        theme = 'gruvbox',
        disabled_filetypes = {
            statusline = { 'dashboard' },
            winbar = { 'dashboard' }
        }
    },
    extensions = { 'lazy', 'fugitive', 'mason', 'nvim-tree', 'trouble' }
}

return M
