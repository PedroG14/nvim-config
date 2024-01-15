return {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    cmd = { "Trouble", "TroubleToggle" },
    keys = {
        {
            "<Leader>xx",
            function()
                require("trouble").toggle()
            end,
            desc = "Trouble Toggle",
        },
        {
            "<Leader>xw",
            function()
                require("trouble").toggle("workspace_diagnostics")
            end,
            desc = "Trouble Workspace Diagnostics",
        },
        {
            "<Leader>xd",
            function()
                require("trouble").toggle("document_diagnostics")
            end,
            desc = "Trouble Document Diagnostics",
        },
        {
            "<Leader>xq",
            function()
                require("trouble").toggle("quickfix")
            end,
            desc = "Trouble Quickfix",
        },
        {
            "<Leader>xl",
            function()
                require("trouble").toggle("loclist")
            end,
            desc = "Trouble Loclist",
        },
        {
            "gR",
            function()
                require("trouble").toggle("lsp_references")
            end,
            desc = "Trouble LSP References",
        },
    },
    opts = {},
}
