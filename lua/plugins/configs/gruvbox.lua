local M = {}

M.setSignColumnHl = function()
	vim.cmd('autocmd colorscheme gruvbox :hi SignColumn guibg=#282828')
end

M.config = {}

return M
