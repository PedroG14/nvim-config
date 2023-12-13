return {
    "windwp/nvim-autopairs",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
        local autopairs = require("nvim-autopairs")

        local cmp = require("cmp")
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")

        local opts = {}

        autopairs.setup(opts)

        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
}
