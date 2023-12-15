return {
    'NeogitOrg/neogit',
    dependencies = "nvim-lua/plenary.nvim",
    event = { "BufNewFile", "BufReadPre" },
    opts = {}
}
