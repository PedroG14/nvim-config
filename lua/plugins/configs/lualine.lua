local M = {}

M.config = {
    options = {
        theme = 'gruvbox',
        disabled_filetypes = {
            statusline = { 'dashboard' },
            winbar = { 'dashboard' }
        }
    },
    winbar = {
        lualine_c = {
            { 'navic' }
        }
    },
    extensions = { 'lazy', 'fugitive', 'mason', 'nvim-tree', 'trouble' }
}

return M
