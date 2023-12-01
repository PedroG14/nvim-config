return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = 'onsails/lspkind.nvim',
        lazy = true,
        config = function()
            local cmp = require('cmp')

            local luasnip = require('luasnip')
            local lspkind = require('lspkind')

            local opts = {
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' }
                }),
                mapping = cmp.mapping.preset.insert({
                    ['<C-k>'] = cmp.mapping.select_prev_item(),
                    ['<C-j>'] = cmp.mapping.select_next_item(),
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = false })
                }),
                formatting = {
                    format = lspkind.cmp_format({
                        mode = 'symbol_text',
                        menu = ({
                            nvim_lsp = '[LSP]',
                            luasnip = '[Snippet]',
                            buffer = '[Buffer]',
                            nvim_lua = '[Lua]',
                            latex_symbols = '[LaTeX]'
                        })
                    })
                }
            }

            cmp.setup(opts)

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' },
                    { name = 'cmdline' }
                })
            })

            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })
        end
    },

    {
        'hrsh7th/cmp-nvim-lsp',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'neovim/nvim-lspconfig'
        },
        event = 'InsertEnter'
    },

    {
        'saadparwaiz1/cmp_luasnip',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip'
        },
        event = 'InsertEnter'
    },

    {
        'hrsh7th/cmp-buffer',
        dependencies = 'hrsh7th/nvim-cmp',
        event = 'InsertEnter'
    },

    {
        'hrsh7th/cmp-path',
        dependencies = 'hrsh7th/nvim-cmp',
        event = { 'InsertEnter', 'CmdlineEnter' }
    },

    {
        'hrsh7th/cmp-cmdline',
        dependencies = 'hrsh7th/nvim-cmp',
        event = 'CmdlineEnter'
    }
}
