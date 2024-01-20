return {
    "kdheepak/lazygit.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitFilter",
        "LazyGitCurrentFile",
        "LazyGitFilterCurrentFile",
    },
    config = function()
        vim.g.lazygit_floating_window_border_chars = {
            "┌",
            "─",
            "┐",
            "│",
            "┘",
            "─",
            "└",
            "│",
        }
        require("telescope").load_extension("lazygit")
    end,
}
