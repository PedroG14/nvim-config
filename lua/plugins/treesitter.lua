return {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
        'JoosepAlviste/nvim-ts-context-commentstring',
        'windwp/nvim-ts-autotag'
    },
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
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true }
        }

        treesitter.setup(opts)
    end
}
