return {
	options = {
		separator_style = 'thick',
		offsets = {
			{
				filetype = 'NvimTree',
				text = function()
					return vim.fn.getcwd()
				end,
				highlight = 'Directory',
				separator = true
			}
		}
	}
}
