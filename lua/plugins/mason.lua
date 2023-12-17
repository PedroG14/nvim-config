return {
    {
        "williamboman/mason.nvim",
        opts = function()
            return {
                ui = {
                    icons = {
                        package_installed   = "󰱒",
                        package_pending     = "󰄱",
                        package_uninstalled = "󱋭"
                    }
                }
            }
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = "williamboman/mason.nvim",
        cmd = { "LspInstall", "LspUninstall" }
    }
}
