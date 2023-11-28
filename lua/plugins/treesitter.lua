return {
    -- TREESITTER --
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        event = { 'BufNewFile', 'BufReadPre' },
        config = function()
            local treesitter_configs = require('nvim-treesitter.configs')

            local opts = {
                ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query' },
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

            treesitter_configs.setup(opts)
        end
    },

    -- TREESITTER TEXTOBJECTS --
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        event = { 'BufNewFile', 'BufReadPre' },
        dependencies = {
            'nvim-treesitter/nvim-treesitter'
        }
    },

    -- TS-AUTOTAG --
    {
        'windwp/nvim-ts-autotag',
        event = { 'BufNewFile', 'BufReadPre' },
        dependencies = {
            'nvim-treesitter/nvim-treesitter'
        }
    }
}
