return {
	-- AUTOPAIRS --
	{ 
		'windwp/nvim-autopairs', 
		lazy = false,
		event = 'InsertEnter', 
		opts = function()
			return require('plugins.configs.autopairs')
		end,
		config = function(_, opts)
			require('nvim-autopairs').setup(opts.config)
			opts.cmp_event()
		end
	},

	-- BARBECUE --
	{ 
		'utilyre/barbecue.nvim',
		name = 'barbecue', 
		version = '*', 
		dependencies = { 'SmiteshP/nvim-navic', 'nvim-tree/nvim-web-devicons' },
		opts = function() 
			return require('plugins.configs.barbecue')
		end,
		config = function(_, opts)
			require('barbecue').setup(opts)
		end
	},

	-- BUFFERLINE --
	{ 
		'akinsho/bufferline.nvim',
		version = '*', 
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = function()
			return require('plugins.configs.bufferline')
		end,
		config = function(_, opts)
			require('bufferline').setup(opts)
		end
	},

	-- CMP --
	{ 
		'hrsh7th/nvim-cmp', 
		lazy = false,
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'lukas-reineke/cmp-under-comparator',
			{
				'L3MON4D3/LuaSnip',
				build = 'make install_jsregexp', 
				dependencies = { 
					'rafamadriz/friendly-snippets', 
					'saadparwaiz1/cmp_luasnip' 
				}
			},
			'onsails/lspkind.nvim'
		},
		opts = function()
			return require('plugins.configs.cmp')
		end,
		config = function(_, opts)
			require('cmp').setup(opts.config)
			opts.filetype_cmdline_config()
		end
	},

	-- COLORIZER --
	{
		'norcalli/nvim-colorizer.lua',
		opts = function()
			return require('plugins.configs.colorizer')
		end,
		config = function(_, opts)
			require('colorizer').setup(opts)
		end
	},

	-- COMMENT --
	{
		'numToStr/Comment.nvim',
		lazy = false,
		config = true
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
			return require('plugins.configs.dashboard')
		end,
		config = function(_, opts)
			require('dashboard').setup(opts.config)
			opts.hl()
		end
	},

	-- FUGITIVE --
	{ 
		'tpope/vim-fugitive'
	},

	-- GITSIGNS --
	{ 
		'lewis6991/gitsigns.nvim', 
		config = true
	},

	-- GRUVBOX --
	{ 
		'ellisonleao/gruvbox.nvim', 
		lazy = false, 
		priority = 1000, 
		opts = function()
			return require('plugins.configs.gruvbox')
		end,
		config = function(_, opts)
			require('gruvbox').setup(opts)
			vim.cmd.colorscheme('gruvbox')
		end
	},

	-- INDENT BLANKLINE --
	{ 
		'lukas-reineke/indent-blankline.nvim', 
		main = 'ibl',
		opts = function()
			return require('plugins.configs.ibl')
		end,
		config = function(_, opts)
			require('ibl').setup(opts.config)
			opts.ibl_overwrite()
		end
	},

	-- LSPCONFIG --
	{ 
		'neovim/nvim-lspconfig',
		lazy = false,
		config = function()
			require('plugins.configs.lspconfig')
		end
	},

	-- LUALINE --
	{ 
		'nvim-lualine/lualine.nvim', 
		dependencies = { 
			'nvim-tree/nvim-web-devicons',
			optional = true 
		},
		opts = function()
			return require('plugins.configs.lualine')
		end,
		config = function(_, opts)
			require('lualine').setup(opts)
		end
	},

	-- MASON --
	{ 
		'williamboman/mason.nvim', 
		lazy = false,
		dependencies = { 
			'williamboman/mason-lspconfig.nvim'
		},
		opts = function()
			return require('plugins.configs.mason')
		end,
		config = function(_, opts)
			require('mason').setup(opts.mason)
			require('mason-lspconfig').setup(opts.mason_lsp)
			opts.mason_lsp_capabilities()
		end
	},

	-- SURROUND --
	{ 
		'tpope/vim-surround'
	},

	-- TELESCOPE --
	{ 
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = { 
			'nvim-lua/plenary.nvim',
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				build = 'make'
			}
		},
		opts = function()
			return require('plugins.configs.telescope')
		end,
		config = function(_, opts)
			require('telescope').setup(opts.config)
			opts.extensions()
		end
	},

	-- TREE --
	{ 
		'nvim-tree/nvim-tree.lua',
		version = '*',
		dependencies = { 
			'nvim-tree/nvim-web-devicons'
		},
		config = true
	},

	-- TREESITTER --
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		opts = function()
			return require('plugins.configs.treesitter')
		end,
		config = function(_, opts)
			require('nvim-treesitter.configs').setup(opts)
		end
	},

	-- TROUBLE --
	{ 
		'folke/trouble.nvim',
		dependencies = { 
			'nvim-tree/nvim-web-devicons'
		},
		config = true 
	},

	-- TS-AUTOTAG --
	{
		'windwp/nvim-ts-autotag'
	}
}
