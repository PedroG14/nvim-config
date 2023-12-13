return {
    'NeogitOrg/neogit',
    dependencies = "nvim-lua/plenary.nvim",
    event = { "BufNewFile", "BufReadPre" },
    config = function()
        local neogit = require("neogit")

        local opts = {}

        neogit.setup(opts)
    end
}
