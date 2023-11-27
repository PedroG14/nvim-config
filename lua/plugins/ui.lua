return {
    -- BARBECUE --
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        version = '*',
        dependencies = {
            {
                'SmiteshP/nvim-navic',
                dependencies = {
                    'neovim/nvim-lspconfig'
                }
            },
            'nvim-tree/nvim-web-devicons'
        },
        opts = function()
            return require('config.barbecue')
        end,
        config = function(_, opts)
            require('barbecue').setup(opts.config)
            opts.set_hl()
        end
    },

    -- BUFFERLINE --
    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            {
                'echasnovski/mini.bufremove',
                version = '*'
            }
        },
        opts = function()
            return require('config.bufferline')
        end,
        config = function(_, opts)
            require('bufferline').setup(opts.config)
        end
    },

    -- DASHBOARD --
    {
        'nvimdev/dashboard-nvim',
        lazy = false,
        event = 'VimEnter',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        opts = function()
            return require('config.dashboard')
        end,
        config = function(_, opts)
            require('dashboard').setup(opts.config)
        end
    },

    -- INDENT BLANKLINE --
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = function()
            return require('config.ibl')
        end,
        config = function(_, opts)
            require('ibl').setup(opts.config)
            opts.ibl_overwrite()
        end
    },

    -- LUALINE --
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        opts = function()
            return require('config.lualine')
        end,
        config = function(_, opts)
            require('lualine').setup(opts.config)
        end
    },

    -- TELESCOPE --
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'MunifTanjim/nui.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make'
            }
        },
        opts = function()
            return require('config.telescope')
        end,
        config = function(_, opts)
            require('telescope').setup(opts.config)
            opts.extensions()
        end
    },

    -- NEO-TREE --
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
            {
                's1n7ax/nvim-window-picker',
                version = '2.*',
                opts = function()
                    return require('config.window-picker')
                end,
                config = function(_, opts)
                    require('window-picker').setup(opts.config)
                end
            }
        },
        opts = function()
            return require('config.neo-tree')
        end,
        config = function(_, opts)
            require('neo-tree').setup(opts.config)
        end
    },

    -- TROUBLE --
    {
        'folke/trouble.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        config = true
    }
}
