return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp"
    },
    event = { "BufReadPre", "BufNewFile" },
    cmd = {
        "LspInfo",
        "LspLog",
        "LspRestart",
        "LspStart",
        "LspStop"
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")

        -- Adjusting LSP settings for autocomplete
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local handlers = {
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities
                })
            end
        }

        -- Mason LSP Integration
        local opts = {
            ensure_installed = {
                "lua_ls",
                "bashls",
                "cssls",
                "clangd",
                "emmet_ls",
                "html",
                "jdtls",
                "tsserver",
                "pylsp",
                "gopls",
                "rust_analyzer"
            },
            automatic_installation = true,
            handlers = handlers
        }

        mason_lspconfig.setup(opts)

        -- Diagnostic signs
        local signs = require("core.utils").diagnostic_icons

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = signs.Error,
                    [vim.diagnostic.severity.WARN]  = signs.Warn,
                    [vim.diagnostic.severity.INFO]  = signs.Info,
                    [vim.diagnostic.severity.HINT]  = signs.Hint
                },
                numhl = {
                    [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
                    [vim.diagnostic.severity.WARN]  = "DiagnosticSignWarn",
                    [vim.diagnostic.severity.INFO]  = "DiagnosticSignInfo",
                    [vim.diagnostic.severity.HINT]  = "DiagnosticSignHint"
                },
                linehl = {
                    [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
                    [vim.diagnostic.severity.WARN]  = "DiagnosticSignWarn",
                    [vim.diagnostic.severity.INFO]  = "DiagnosticSignInfo",
                    [vim.diagnostic.severity.HINT]  = "DiagnosticSignHint"
                }
            }
        })

        -- Needed only for Neo-Tree diagnostic icons
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
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
        local builtin = require('telescope.builtin')

        setkeymap("n", "<leader>cd", diagnostic.open_float)
        setkeymap("n", "[d", diagnostic.goto_prev)
        setkeymap("n", "]d", diagnostic.goto_next)

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(event)
                local buf_opts = { buffer = event.buf }
                setkeymap("n", "K", lspbuf.hover, buf_opts)
                setkeymap("n", "gD", lspbuf.declaration, buf_opts)

                setkeymap("n", "gd", function()
                    builtin.lsp_definitions()
                end, buf_opts)
                setkeymap("n", "gI", function()
                    builtin.lsp_implementations()
                end, buf_opts)
                setkeymap("n", "gr", function()
                    builtin.lsp_references()
                end, buf_opts)
                setkeymap("n", "gy", function()
                    builtin.lsp_type_definitions()
                end, buf_opts)

                setkeymap("n", "gK", lspbuf.signature_help, buf_opts)
                setkeymap("i", "<C-k>", lspbuf.signature_help, buf_opts)

                setkeymap("n", "<leader>cr", lspbuf.rename, buf_opts)
                setkeymap({ "n", "v" }, "<leader>ca", lspbuf.code_action, buf_opts)
            end
        })
    end
}
