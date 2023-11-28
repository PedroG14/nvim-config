return {
    'williamboman/mason.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig.nvim',
        'jay-babu/mason-null-ls.nvim'
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')
        local mason_null_ls = require('mason-null-ls')

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        local lspconfig = require('lspconfig')

        local lsp_handlers = function(server_name)
            lspconfig[server_name].setup({
                capabilities = capabilities
            })
        end

        local opts = {}

        opts.mason_lspconfig = {
            ensure_installed = {
                'lua_ls', 'bashls', 'cssls', 'clangd', 'eslint', 'emmet_ls', 'html', 'jdtls', 'tsserver', 'pylsp'
            },
            handlers = { lsp_handlers }
        }

        opts.mason_null_ls = {
            ensure_installed = {
                'prettier', 'stylua', 'eslint_d'
            },
            handlers = {}
        }

        mason.setup()
        mason_lspconfig.setup(opts.mason_lspconfig)
        mason_null_ls.setup(opts.mason_null_ls)
    end
}
