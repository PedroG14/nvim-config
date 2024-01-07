return {
    "nvimtools/none-ls.nvim",
    dependencies = "jay-babu/mason-null-ls.nvim",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    opts = {},
    config = function(_, opts)
        require("null-ls").setup(opts)
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("AutoFormat", { clear = true }),
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end,
}
