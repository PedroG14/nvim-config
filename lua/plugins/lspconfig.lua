return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = {
        'LspInfo',
        'LspLog',
        'LspRestart',
        'LspStart',
        'LspStop'
    },
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp'
    },
    config = function()
        local lspconfig = require('lspconfig')
        local mason_lspconfig = require('mason-lspconfig')

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        local handlers = {
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities
                })
            end
        }

        local opts = {
            ensure_installed = {
                'lua_ls',
                'bashls',
                'cssls',
                'clangd',
                'emmet_ls',
                'html',
                'jdtls',
                'tsserver',
                'pylsp'
            },
            automatic_installation = true,
            handlers = handlers
        }

        mason_lspconfig.setup(opts)

        local signs = {
            Error = ' ',
            Warn  = ' ',
            Hint  = ' ',
            Info  = ' ',
        }

        for type, icon in pairs(signs) do
            local hl = 'DiagnosticSign' .. type
            vim.fn.sign_define(hl, {
                text   = icon,
                texthl = hl,
                numhl  = hl
            })
        end
    end
}
