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

            -- Autotag
            autotag = { enable = true },

            -- Textobjects
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ['af'] = '@function.outer',
                        ['if'] = '@function.inner',
                        ['ac'] = '@class.outer',
                        ['ic'] = {
                            query = '@class.inner',
                            desc = 'Select inner part of a class region'
                        },
                        ['as'] = {
                            query = '@scope',
                            query_group = 'locals',
                            desc = 'Select language scope'
                        }
                    },
                    selection_modes = {
                        ['@parameter.outer'] = 'v', -- charwise
                        ['@function.outer'] = 'V', -- linewise
                        ['@class.outer'] = '<c-v>', -- blockwise
                    },
                    include_surrounding_whitespace = true
                }
            }
        }

        treesitter.setup(opts)
    end
}
