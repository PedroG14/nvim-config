return {
    -- AUTOPAIRS --
    {
        'windwp/nvim-autopairs',
        opts = function()
            return require('config.autopairs')
        end,
        config = function(_, opts)
            require('nvim-autopairs').setup(opts.config)
        end
    },

    -- CMP --
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'lukas-reineke/cmp-under-comparator',
            'onsails/lspkind.nvim',
            'windwp/nvim-autopairs'
        },
        opts = function()
            return require('config.cmp')
        end,
        config = function(_, opts)
            require('cmp').setup(opts.config)
            opts.filetype_cmdline_config()
            opts.autopairs_parenthesis()
        end
    },

    -- COLORIZER --
    {
        'NvChad/nvim-colorizer.lua',
        opts = function()
            return require('config.colorizer')
        end,
        config = function(_, opts)
            require('colorizer').setup(opts.config)
        end
    },

    -- COMMENT --
    {
        'echasnovski/mini.comment',
        version = '*',
        config = true
    },

    -- LUASNIP --
    {
        'L3MON4D3/LuaSnip',
        build = 'make install_jsregexp',
        dependencies = {
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets'
        },
        opts = function()
            return require('config.luasnip')
        end,
        config = function(_, opts)
            opts.snippets()
        end
    },

    -- SURROUND --
    {
        'kylechui/nvim-surround',
        version = '*',
        event = 'VeryLazy',
        opts = function()
            return require('config.surround')
        end,
        config = function(_, opts)
            require('nvim-surround').setup(opts.config)
        end
    }
}
