return {
    "stevearc/conform.nvim",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            javascript = { "prettierd" },
        },
    },
    config = function(_, opts)
        local conform = require("conform")
        conform.setup(opts)
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            group = vim.api.nvim_create_augroup("AutoFormat", { clear = true }),
            callback = function(args)
                conform.format({ bufnr = args.buf })
            end,
        })
    end,
}
