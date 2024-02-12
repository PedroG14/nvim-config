return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    keys = {
        { "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "Nvim-Tree Toggle" },
    },
    opts = {
        filters = {
            git_ignored = false,
        },
        renderer = {
            indent_markers = {
                enable = true,
            },
        },
    },
}
