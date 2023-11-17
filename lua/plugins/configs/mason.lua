local M = {}

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

M.mason = {}

M.mason_lspconfig = {
    ensure_installed = {
        'lua_ls', 'bashls', 'cssls', 'clangd', 'eslint', 'emmet_ls', 'html', 'jdtls', 'tsserver', 'pylsp'
    }
}

return M
