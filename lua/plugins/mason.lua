return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        local opts = {}

        opts.mason_lspconfig = {
            ensure_installed = {
                'lua_ls', 'bashls', 'cssls', 'clangd', 'eslint', 'emmet_ls', 'html', 'jdtls', 'tsserver', 'pylsp'
            },
            automatic_installation = true,
            handlers = {}
        }

        mason.setup()
        mason_lspconfig.setup(opts.mason_lspconfig)
    end
}
