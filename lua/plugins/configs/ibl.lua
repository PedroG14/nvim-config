local M = {}

M.ibl_overwrite = function()
	require('ibl').overwrite({
		exclude = { filetypes = { 'dashboard' } }
	})
end

M.config = {}

return M
