---------------
-- 󰚥 Plugins --
---------------

-- Loading lazy.nvim
require('plugins.lazy')

require('lazy').setup({
	-- AUTOPAIRS --
	{ 'windwp/nvim-autopairs', event = 'InsertEnter', opts = {} },

	-- CMP --
	{ 'hrsh7th/nvim-cmp', dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'lukas-reineke/cmp-under-comparator',
		{ 'L3MON4D3/LuaSnip', build = 'make install_jsregexp', dependencies = { 'rafamadriz/friendly-snippets', 'saadparwaiz1/cmp_luasnip' } }
	} },

	-- COLORIZER --
	{ 'norcalli/nvim-colorizer.lua' },

	-- COMMENT --
	{ 'numToStr/Comment.nvim', lazy = false, opts = {} },

	-- DASHBOARD --
	{ 'nvimdev/dashboard-nvim', event = 'VimEnter', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = {} },

	-- FUGITIVE --
	{ 'tpope/vim-fugitive' },

	-- GRUVBOX --
	{ 'ellisonleao/gruvbox.nvim', lazy = false, priority = 1000, opts = {} },

	-- INDENT BLANKLINE --
	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl' },

	-- LUALINE --
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', optional = true } },

	-- LSPCONFIG --
	{ 'neovim/nvim-lspconfig' },

	-- MASON --
	{ 'williamboman/mason.nvim', dependencies = { 'williamboman/mason-lspconfig.nvim' } },

	-- SURROUND --
	{ 'tpope/vim-surround' },

	-- TELESCOPE --
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } } },

	-- TREE --
	{ 'nvim-tree/nvim-tree.lua', version = '*', lazy = false, dependencies = { 'nvim-tree/nvim-web-devicons' } },

	-- TREESITTER --
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	-- TROUBLE --
	{ 'folke/trouble.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = {} },

	-- TS-AUTOTAG --
	{ 'windwp/nvim-ts-autotag' }
})

-- Plugins settings --
require('plugins.autopairs')
require('plugins.cmp')
require('plugins.colorizer')
require('plugins.dashboard')
require('plugins.gruvbox')
require('plugins.ibl')
require('plugins.lualine')
require('plugins.luasnip')
require('plugins.lspconfig')
require('plugins.mason')
require('plugins.telescope')
require('plugins.tree')
require('plugins.treesitter')
require('plugins.trouble')
