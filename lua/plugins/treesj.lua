return {
    "Wansmer/treesj",
    dependencies = "nvim-treesitter/nvim-treesitter",
    keys = {
        { "<leader>tm", function()
            require("treesj").toggle()
        end, desc = "TreeSJ Toggle" },
        { "<leader>ts", function()
            require("treesj").split()
        end, desc = "TreeSJ Split" },
        { "<leader>tj", function()
            require("treesj").join()
        end, desc = "TreeSJ Join" }
    },
    config = function()
        local treesj = require("treesj")

        local opts = {}

        treesj.setup(opts)
    end,
}
