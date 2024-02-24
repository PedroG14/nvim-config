return {
    "nvimtools/none-ls.nvim",
    dependencies = "jay-babu/mason-null-ls.nvim",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    opts = {
        mason = {
            handlers = {},
        },
        null_ls = {},
    },
    config = function(_, opts)
        require("mason-null-ls").setup(opts.mason)
        require("null-ls").setup(opts.null_ls)

        vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end,
}
