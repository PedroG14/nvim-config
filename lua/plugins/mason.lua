return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        opts = {
            ui = {
                icons = {
                    package_installed   = "󰱒",
                    package_pending     = "󰄱",
                    package_uninstalled = "󱋭"
                }
            }
        }
    },

    {
        "williamboman/mason-lspconfig.nvim",
        cmd = { "LspInstall", "LspUninstall" },
        opts = {
            ensure_installed = {
                "lua_ls",
                "bashls",
                "cssls",
                "clangd",
                "emmet_ls",
                "html",
                "jdtls",
                "tsserver",
                "pylsp",
                "gopls",
                "rust_analyzer"
            },
            automatic_installation = true
        }
    }
}
