return {
    {
        "williamboman/mason.nvim",
        config = function()
            local mason = require("mason")

            local opts = {
                ui = {
                    icons = {
                        package_installed   = "󰱒",
                        package_pending     = "󰄱",
                        package_uninstalled = "󱋭"
                    }
                }
            }

            mason.setup(opts)
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        cmd = { "LspInstall", "LspUninstall" },
        config = true
    }
}
