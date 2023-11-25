---------------
-- 󰚥 PLUGINS --
---------------

local Plugins = {}

Plugins.coding = {
    -- AUTOPAIRS --
    {
        'windwp/nvim-autopairs',
        opts = function()
            return require('configs.autopairs')
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
            return require('configs.cmp')
        end,
        config = function(_, opts)
            require('cmp').setup(opts.config)
            opts.filetype_cmdline_config()
            opts.autopairs_parenthesis()
        end
    },

    -- COMMENT --
    {
        'numToStr/Comment.nvim',
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
            return require('configs.luasnip')
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
            return require('configs.surround')
        end,
        config = function(_, opts)
            require('nvim-surround').setup(opts.config)
        end
    }
}

Plugins.colorscheme = {
    -- GRUVBOX --
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        opts = function()
            return require('configs.gruvbox')
        end,
        config = function(_, opts)
            require('gruvbox').setup(opts.config)
            vim.cmd.colorscheme('gruvbox')
        end
    },

    -- TOKYONIGHT --
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = function()
            return require('configs.tokyonight')
        end,
        config = function(_, opts)
            require('tokyonight').setup(opts.config)
        end
    },
}

Plugins.treesitter = {
    -- TREESITTER --
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        opts = function()
            return require('configs.treesitter')
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

Plugins.git = {
    -- FUGITIVE --
    {
        'tpope/vim-fugitive'
    },

    -- GITSIGNS --
    {
        'lewis6991/gitsigns.nvim',
        config = true
    }
}

Plugins.lsp = {
    -- LSPCONFIG --
    {
        'neovim/nvim-lspconfig',
        opts = function()
            return require('configs.lspconfig')
        end,
        config = function(_, opts)
            opts.sign_define()
        end
    },

    -- MASON --
    {
        'williamboman/mason.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason-lspconfig.nvim'
        },
        opts = function()
            return require('configs.mason')
        end,
        config = function(_, opts)
            require('mason').setup(opts.mason)
            require('mason-lspconfig').setup(opts.mason_lspconfig)
        end
    }
}

Plugins.ui = {
    -- BARBECUE --
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        version = '*',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons'
        },
        opts = function()
            return require('configs.barbecue')
        end,
        config = function(_, opts)
            require('barbecue').setup(opts.config)
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
            return require('configs.bufferline')
        end,
        config = function(_, opts)
            require('bufferline').setup(opts.config)
        end
    },

    -- COLORIZER --
    {
        'norcalli/nvim-colorizer.lua',
        opts = function()
            return require('configs.colorizer')
        end,
        config = function(_, opts)
            require('colorizer').setup(opts.config)
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
            return require('configs.dashboard')
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
            return require('configs.ibl')
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
            return require('configs.lualine')
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
            return require('configs.telescope')
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
                    return require('configs.window-picker')
                end,
                config = function(_, opts)
                    require('window-picker').setup(opts.config)
                end
            }
        },
        opts = function()
            return require('configs.neo-tree')
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

return {
    Plugins.coding,
    Plugins.colorscheme,
    Plugins.git,
    Plugins.lsp,
    Plugins.treesitter,
    Plugins.ui
}
