return {
    -- TREESITTER --
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        opts = function()
            return require('config.treesitter')
        end,
        config = function(_, opts)
            require('nvim-treesitter.configs').setup(opts.config)
        end
    },

    -- TREESITTER TEXTOBJECTS --
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        dependencies = {
            'nvim-treesitter/nvim-treesitter'
        }
    },

    -- TS-AUTOTAG --
    {
        'windwp/nvim-ts-autotag',
        dependencies = {
            'nvim-treesitter/nvim-treesitter'
        }
    }
}
