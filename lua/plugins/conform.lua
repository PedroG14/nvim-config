return {
    'stevearc/conform.nvim',
    dependencies = {
        'williamboman/mason.nvim',
    },
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
        {
            '<leader>f',
            function()
                require('conform').format({ async = false, lsp_fallback = true })
            end,
            mode = '',
            desc = 'Format buffer',
        },
    },
    config = function()
        local conform = require('conform')
        local opts = {
            formatters_by_ft = {
                lua = { 'stylua' },
                javascript = { 'prettier' },
            },
            formatters = {
                stylua = {
                    prepend_args = {
                        '--config-path='
                            .. vim.env.HOME
                            .. '/.config/nvim/.stylua.toml',
                    },
                },
                prettier = {
                    prepend_args = {
                        '--tab-width',
                        '4',
                    },
                },
            },
            format_on_save = {
                timeout_ms = 500,
                async = false,
                lsp_fallback = true,
            },
        }

        conform.setup(opts)
    end,
}
