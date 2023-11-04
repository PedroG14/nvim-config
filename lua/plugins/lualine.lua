require('lualine').setup({
	options = {
		theme = 'gruvbox',
		disabled_filetypes = {
			statusline = { 'alpha' }
		}
	},
	extensions = { 'lazy', 'nvim-tree', 'trouble' }
})
