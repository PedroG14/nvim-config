return {
    'stevearc/aerial.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'neovim/nvim-lspconfig',
        'nvim-tree/nvim-web-devicons'
    },
    cmd = { 'AerialToggle', 'AerialInfo', 'AerialPrev', 'AerialNext' },
    keys = {
        { '{', '<Cmd>AerialPrev<CR>' },
        { '}', '<Cmd>AerialNext<CR>' },
        { '<leader>a', '<Cmd>AerialToggle!<CR>' }
    },
    config = function()
        local aerial = require('aerial')

        local opts = {
            backends = { 'lsp', 'treesitter', 'markdown', 'man' },
            lazy_load = false,
            filter_kind = false
        }

        aerial.setup(opts)
    end
}
