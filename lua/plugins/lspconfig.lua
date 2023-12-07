return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp'
    },
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = { 'LspInfo', 'LspLog', 'LspRestart', 'LspStart', 'LspStop' },
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
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end

        -- Keymaps --
        local setkeymap = vim.keymap.set
        local diagnostic = vim.diagnostic
        local lspbuf = vim.lsp.buf
        local builtin = require('telescope.builtin')

        setkeymap('n', '<leader>cd', diagnostic.open_float)
        setkeymap('n', '[d', diagnostic.goto_prev)
        setkeymap('n', ']d', diagnostic.goto_next)

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(event)
                local kb_opts = { buffer = event.buf }
                setkeymap('n', 'K', lspbuf.hover, kb_opts)
                setkeymap('n', 'gD', lspbuf.declaration, kb_opts)
                setkeymap('n', 'gd', builtin.lsp_definitions, kb_opts)
                setkeymap('n', 'gI', builtin.lsp_implementations, kb_opts)
                setkeymap('n', 'gr', builtin.lsp_references, kb_opts)
                setkeymap('n', 'gy', builtin.lsp_type_definitions, kb_opts)
                setkeymap('n', 'gK', lspbuf.signature_help, kb_opts)
                setkeymap('i', '<C-k>', lspbuf.signature_help, kb_opts)

                setkeymap('n', '<leader>cr', lspbuf.rename, kb_opts)
                setkeymap({ 'n', 'v' }, '<leader>ca', lspbuf.code_action, kb_opts)
            end
        })
    end
}
