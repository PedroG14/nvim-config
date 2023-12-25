return {
    "stevearc/aerial.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    cmd = { "AerialToggle", "AerialInfo", "AerialPrev", "AerialNext" },
    keys = {
        { "<leader>o", "<Cmd>AerialToggle!<CR>", desc = "Aerial Toggle" }
    },
    opts = {
        backends = { "lsp", "treesitter" },
        lazy_load = false,
        filter_kind = false,
        lsp = {
            diagnostics_trigger_update = false
        },
        on_attach = function(bufnr)
            vim.keymap.set("n", "{", "<Cmd>AerialPrev<CR>", { buffer = bufnr })
            vim.keymap.set("n", "}", "<Cmd>AerialNext<CR>", { buffer = bufnr })
        end
    }
}
