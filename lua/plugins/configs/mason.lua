local M = {}

M.mason = {}

M.mason_lsp = {}

M.mason_lsp_capabilities = function()
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
	require('mason-lspconfig').setup_handlers({
		function(server_name)
			require('lspconfig')[server_name].setup({
				capabilities = capabilities
			})
		end
	})
end

return M
