return {
    "folke/neodev.nvim",
    lazy = true,
    config = function()
        local neodev = require("neodev")

        local opts = {}

        neodev.setup(opts)
    end
}
