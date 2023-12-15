return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufNewFile", "BufReadPre" },
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
