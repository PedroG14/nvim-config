return {
    'neovim/nvim-lspconfig',
    cmd = { 'LspInfo', 'LspInstall', 'LspUninstall', 'LspStart', 'LspStop', 'LspRestart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim'
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

        local opts = {}

        opts.mason_lspconfig = {
            ensure_installed = {
                'lua_ls', 'bashls', 'cssls', 'clangd', 'eslint', 'emmet_ls', 'html', 'jdtls', 'tsserver', 'pylsp'
            },
            automatic_installation = true,
            handlers = handlers
        }

        mason_lspconfig.setup(opts.mason_lspconfig)

        local signs = {
            Error = ' ',
            Warn = ' ',
            Hint = '󰌶 ',
            Info = ' '
        }

        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, {
                text = icon,
                texthl = hl,
                numhl = hl
            })
        end
    end
}
