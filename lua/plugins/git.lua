local event = {
    "BufNewFile",
    "BufWritePre",
    "BufReadPost"
}

return {
    {
        "lewis6991/gitsigns.nvim",
        event = event,
        opts = {}
    },

    -- {
    --     "sindrets/diffview.nvim",
    --     event = event,
    --     opts = {}
    -- },

    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim"
        },
        event = event,
        opts = {}
    }
}
