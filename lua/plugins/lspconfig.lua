return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "folke/neodev.nvim",
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
                lspconfig[server_name].setup(vim.tbl_extend("force", {
                    capabilities = capabilities,
                }, server_name == "lua_ls" and {
                    settings = {
                        Lua = {
                            completion = {
                                callSnippet = "Replace",
                            },
                        },
                    },
                } or {}))
            end,
        }

        -- Diagnostic signs
        local icons = require("core.config").icons.diagnostics

        M.diagnostic_config = {
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = icons.Error,
                    [vim.diagnostic.severity.WARN] = icons.Warn,
                    [vim.diagnostic.severity.INFO] = icons.Info,
                    [vim.diagnostic.severity.HINT] = icons.Hint,
                },
            },
            virtual_text = {
                prefix = "●",
            },
            severity_sort = true,
        }

        return M
    end,
    config = function(_, opts)
        -- Mason LSP Handlers
        require("mason-lspconfig").setup_handlers(opts.handlers)

        -- Diagnostic config
        vim.diagnostic.config(opts.diagnostic_config)

        -- Keymaps --
        local keymap = vim.keymap
        local diagnostic = vim.diagnostic
        local lspbuf = vim.lsp.buf
        local builtin = require("telescope.builtin")

        keymap.set("n", "<leader>cd", diagnostic.open_float, {
            desc = "Show diagnostics in a floating window",
        })
        keymap.set("n", "<leader>dk", diagnostic.goto_prev, {
            desc = "Move to the previous diagnostic in the current buffer",
        })
        keymap.set("n", "<leader>dj", diagnostic.goto_next, {
            desc = "Move to the next diagnostic",
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(event)
                local buf_opts = { buffer = event.buf }
                keymap.set(
                    "n",
                    "K",
                    lspbuf.hover,
                    vim.tbl_extend("keep", buf_opts, {
                        desc = "Displays hover information about the symbol under the cursor in a floating window",
                    })
                )
                keymap.set(
                    "n",
                    "gD",
                    lspbuf.declaration,
                    vim.tbl_extend("keep", buf_opts, {
                        desc = "Jumps to the declaration of the symbol under the cursor",
                    })
                )

                keymap.set(
                    "n",
                    "gd",
                    builtin.lsp_definitions,
                    vim.tbl_extend("keep", buf_opts, {
                        desc =
                        "Goto the definition of the word under the cursor, if there's only one, otherwise show all options in Telescope",
                    })
                )
                keymap.set(
                    "n",
                    "gI",
                    builtin.lsp_implementations,
                    vim.tbl_extend("keep", buf_opts, {
                        desc =
                        "Goto the implementation of the word under the cursor if there's only one, otherwise show all options in Telescope",
                    })
                )
                keymap.set(
                    "n",
                    "gr",
                    builtin.lsp_references,
                    vim.tbl_extend("keep", buf_opts, {
                        desc = "Lists LSP references for word under the cursor, jumps to reference on <cr>",
                    })
                )
                keymap.set(
                    "n",
                    "gy",
                    builtin.lsp_type_definitions,
                    vim.tbl_extend("keep", buf_opts, {
                        desc =
                        "Goto the definition of the type of the word under the cursor, if there's only one, otherwise show all options in Telescope",
                    })
                )

                keymap.set(
                    "n",
                    "gK",
                    lspbuf.signature_help,
                    vim.tbl_extend("keep", buf_opts, {
                        desc = "Displays signature information about the symbol under the cursor in a floating window",
                    })
                )
                keymap.set(
                    "i",
                    "<c-k>",
                    lspbuf.signature_help,
                    vim.tbl_extend("keep", buf_opts, {
                        desc = "Displays signature information about the symbol under the cursor in a floating window",
                    })
                )

                keymap.set(
                    "n",
                    "<leader>cr",
                    lspbuf.rename,
                    vim.tbl_extend("keep", buf_opts, {
                        desc = "Renames all references to the symbol under the cursor",
                    })
                )
                keymap.set(
                    { "n", "v" },
                    "<leader>ca",
                    lspbuf.code_action,
                    vim.tbl_extend("keep", buf_opts, {
                        desc = "Selects a code action available at the current cursor position",
                    })
                )
            end,
        })
    end,
}
