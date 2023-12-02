return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = 'windwp/nvim-ts-autotag',
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
            },
            autotag = {
                enable = true
            }
        }

        treesitter.setup(opts)
    end
}
