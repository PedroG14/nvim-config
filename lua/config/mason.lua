local M = {}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server_name)
    require('lspconfig')[server_name].setup({
        capabilities = capabilities
    })
end

M.mason = {}

M.mason_lspconfig = {
    ensure_installed = {
        'lua_ls', 'bashls', 'cssls', 'clangd', 'eslint', 'emmet_ls', 'html', 'jdtls', 'tsserver', 'pylsp'
    },
    handlers = { default_setup }
}

return M
