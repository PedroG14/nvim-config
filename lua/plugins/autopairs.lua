return {
    "windwp/nvim-autopairs",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = {},
    config = function(_, opts)
        require("nvim-autopairs").setup(opts)

        require("cmp").event:on("confirm_done",
            require("nvim-autopairs.completion.cmp").on_confirm_done())
    end
}
