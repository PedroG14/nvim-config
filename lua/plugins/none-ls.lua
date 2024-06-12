return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "jay-babu/mason-null-ls.nvim",
    },
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    opts = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        return {
            mason = {
                handlers = {},
            },
            null_ls = {
                on_attach = function(client, bufnr)
                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_clear_autocmds({
                            group = augroup,
                            buffer = bufnr,
                        })
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = augroup,
                            buffer = bufnr,
                            callback = function()
                                vim.lsp.buf.format({ async = false })
                            end,
                        })
                    end
                end,
            },
        }
    end,
    config = function(_, opts)
        require("mason-null-ls").setup(opts.mason)
        require("null-ls").setup(opts.null_ls)
    end,
}
