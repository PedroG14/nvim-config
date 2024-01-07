return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "j-hui/fidget.nvim",
    },
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    cmd = {
        "LspInfo",
        "LspLog",
        "LspRestart",
        "LspStart",
        "LspStop",
    },
    opts = function()
        local M = {}

        local lspconfig = require("lspconfig")

        -- Adjusting LSP settings for autocomplete
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        M.handlers = {
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                })
            end,
        }

        -- Diagnostic signs
        local icons = require("core.utils").diagnostic_icons

        M.diagnostic_signs = {
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = icons.Error,
                    [vim.diagnostic.severity.WARN] = icons.Warn,
                    [vim.diagnostic.severity.INFO] = icons.Info,
                    [vim.diagnostic.severity.HINT] = icons.Hint,
                },
                numhl = {
                    [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
                    [vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
                    [vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
                    [vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
                },
                linehl = {
                    [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
                    [vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
                    [vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
                    [vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
                },
            },
        }

        return M
    end,
    config = function(_, opts)
        -- Mason LSP Handlers
        require("mason-lspconfig").setup_handlers(opts.handlers)

        -- Diagnostic config
        vim.diagnostic.config(opts.diagnostic_signs)

        -- Keymaps --
        local keymap = vim.keymap
        local diagnostic = vim.diagnostic
        local lspbuf = vim.lsp.buf
        local builtin = require("telescope.builtin")

        keymap.set("n", "<leader>cd", diagnostic.open_float)
        keymap.set("n", "<leader>dk", diagnostic.goto_prev)
        keymap.set("n", "<leader>dj", diagnostic.goto_next)

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(event)
                local buf_opts = { buffer = event.buf }
                keymap.set("n", "K", lspbuf.hover, buf_opts)
                keymap.set("n", "gD", lspbuf.declaration, buf_opts)

                keymap.set("n", "gd", builtin.lsp_definitions, buf_opts)
                keymap.set("n", "gI", builtin.lsp_implementations, buf_opts)
                keymap.set("n", "gr", builtin.lsp_references, buf_opts)
                keymap.set("n", "gy", builtin.lsp_type_definitions, buf_opts)

                keymap.set("n", "gK", lspbuf.signature_help, buf_opts)
                keymap.set("i", "<C-k>", lspbuf.signature_help, buf_opts)

                keymap.set("n", "<leader>cr", lspbuf.rename, buf_opts)
                keymap.set(
                    { "n", "v" },
                    "<leader>ca",
                    lspbuf.code_action,
                    buf_opts
                )
            end,
        })
    end,
}
