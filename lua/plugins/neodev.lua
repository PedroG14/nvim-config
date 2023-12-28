return {
    "folke/neodev.nvim",
    ft = "lua",
    opts = {},
    config = function(_, opts)
        require("neodev").setup(opts)
        require("lspconfig").lua_ls.setup({
            settings = {
                Lua = {
                    completion = {
                        callSnippet = "Replace"
                    }
                }
            }
        })
    end
}
