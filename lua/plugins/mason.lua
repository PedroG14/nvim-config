return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        opts = {
            ui = {
                icons = {
                    package_installed = "󰱒",
                    package_pending = "󰄱",
                    package_uninstalled = "󱋭",
                },
            },
        },
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = "williamboman/mason.nvim",
        cmd = { "LspInstall", "LspUninstall" },
        opts = {
            ensure_installed = {
                "lua_ls",
                "bashls",
                "cssls",
                "clangd",
                "emmet_ls",
                "html",
                "tsserver",
                "pylsp",
                "gopls",
                "rust_analyzer",
                "vimls",
            },
        },
    },

    {
        "jay-babu/mason-null-ls.nvim",
        dependencies = "williamboman/mason.nvim",
        cmd = { "NoneLsInstall", "NoneLsUninstall" },
        opts = {
            ensure_installed = {
                "stylua",
                "prettierd",
                "black",
            },
        },
    },
}
