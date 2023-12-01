return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        local treesitter = require('nvim-treesitter.configs')

        local opts = {
            ensure_installed = {
                'c',
                'lua',
                'vim',
                'vimdoc',
                'query'
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            }
        }

        treesitter.setup(opts)
    end
}
