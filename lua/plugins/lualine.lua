return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local lualine = require('lualine')

        local opts = {
            options = {
                disabled_filetypes = { statusline = { 'dashboard' } }
            },
            extensions = { 'lazy', 'fugitive', 'mason', 'neo-tree', 'trouble' }
        }

        lualine.setup(opts)
    end
}
