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
        backends = { "lsp" },
        lazy_load = false,
        filter_kind = false,
        lsp = {
            diagnostics_trigger_update = false
        },
        show_guides = true,
        guides = {
            mid_item = "│ ",
            last_item = "└ ",
            nested_top = "│ ",
            whitespace = "  ",
        },
        on_attach = function(bufnr)
            vim.keymap.set("n", "{", "<Cmd>AerialPrev<CR>", { buffer = bufnr })
            vim.keymap.set("n", "}", "<Cmd>AerialNext<CR>", { buffer = bufnr })
        end
    }
}
