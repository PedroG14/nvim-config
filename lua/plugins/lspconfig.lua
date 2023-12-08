return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp',
        'folke/neodev.nvim',
    },
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = {
        'LspInfo',
        'LspLog',
        'LspRestart',
        'LspStart',
        'LspStop'
    },
    config = function()
        local lspconfig = require('lspconfig')
        local mason_lspconfig = require('mason-lspconfig')

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        local handlers = {
            function(server_name)
                lspconfig[server_name].setup(vim.tbl_extend('force', {
                    capabilities = capabilities
                }, server_name == 'lua_ls' and {
                    setting = {
                        Lua = {
                            completion = {
                                callSnippet = 'Replace'
                            }
                        }
                    }
                } or {}))
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

        -- Keymaps --
        local setkeymap = vim.keymap.set
        local diagnostic = vim.diagnostic
        local lspbuf = vim.lsp.buf

        setkeymap('n', '<leader>cd', diagnostic.open_float)
        setkeymap('n', '[d', diagnostic.goto_prev)
        setkeymap('n', ']d', diagnostic.goto_next)

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(event)
                local buf_opts = { buffer = event.buf }
                setkeymap('n', 'K', lspbuf.hover, buf_opts)
                setkeymap('n', 'gD', lspbuf.declaration, buf_opts)
                setkeymap('n', 'gd', '<Cmd>Telescope lsp_definitions<CR>', buf_opts)
                setkeymap('n', 'gI', '<Cmd>Telescope lsp_implementations<CR>', buf_opts)
                setkeymap('n', 'gr', '<Cmd>Telescope lsp_references<CR>', buf_opts)
                setkeymap('n', 'gy', '<Cmd>Telescope lsp_type_definitions<CR>', buf_opts)
                setkeymap('n', 'gK', lspbuf.signature_help, buf_opts)
                setkeymap('i', '<C-k>', lspbuf.signature_help, buf_opts)

                setkeymap('n', '<leader>cr', lspbuf.rename, buf_opts)
                setkeymap({ 'n', 'v' }, '<leader>ca', lspbuf.code_action, buf_opts)
            end
        })
    end
}
