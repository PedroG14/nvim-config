return {
    -- LSPCONFIG --
    {
        'neovim/nvim-lspconfig',
        opts = function()
            return require('config.lspconfig')
        end,
        config = function(_, opts)
            opts.sign_define()
        end
    },

    -- MASON --
    {
        'williamboman/mason.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason-lspconfig.nvim'
        },
        opts = function()
            return require('config.mason')
        end,
        config = function(_, opts)
            require('mason').setup(opts.mason)
            require('mason-lspconfig').setup(opts.mason_lspconfig)
        end
    }
}
