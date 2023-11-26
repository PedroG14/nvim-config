return {
    -- GRUVBOX --
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        opts = function()
            return require('config.gruvbox')
        end,
        config = function(_, opts)
            require('gruvbox').setup(opts.config)
            vim.cmd.colorscheme('gruvbox')
        end
    },

    -- TOKYONIGHT --
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = function()
            return require('config.tokyonight')
        end,
        config = function(_, opts)
            require('tokyonight').setup(opts.config)
            -- vim.cmd.colorscheme('tokyonight')
        end
    }
}
