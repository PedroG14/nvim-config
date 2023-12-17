return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost"
    },
    opts = {},
    config = function(_, opts)
        require("ibl").setup(opts)

        require("ibl").overwrite({
            exclude = {
                filetypes = { "dashboard" }
            }
        })
    end
}
