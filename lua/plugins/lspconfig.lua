return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp"
    },
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost"
    },
    cmd = {
        "LspInfo",
        "LspLog",
        "LspRestart",
        "LspStart",
        "LspStop"
    },
    opts = function()
        local M = {}

        local lspconfig = require("lspconfig")

        -- Adjusting LSP settings for autocomplete
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local handlers = {
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities
                })
            end
        }

        M.mason_opts = {
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

        -- Diagnostic signs
        local icons = require("core.utils").diagnostic_icons

        M.diagnostic_signs = {
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = icons.Error,
                    [vim.diagnostic.severity.WARN]  = icons.Warn,
                    [vim.diagnostic.severity.INFO]  = icons.Info,
                    [vim.diagnostic.severity.HINT]  = icons.Hint
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
        }

        return M
    end,
    config = function(_, opts)
        -- Mason LSP Integration
        require("mason-lspconfig").setup(opts.mason_opts)

        -- Diagnostic config
        vim.diagnostic.config(opts.diagnostic_signs)

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
