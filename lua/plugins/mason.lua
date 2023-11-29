return {
    'williamboman/mason.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        local handlers = {
            function(server_name)
                require('lspconfig')[server_name].setup({})
            end
        }

        local opts = {}

        opts.mason_lspconfig = {
            ensure_installed = {
                'lua_ls', 'bashls', 'cssls', 'clangd', 'eslint', 'emmet_ls', 'html', 'jdtls', 'tsserver', 'pylsp'
            },
            handlers = handlers
        }

        mason.setup()
        mason_lspconfig.setup(opts.mason_lspconfig)
    end
}
