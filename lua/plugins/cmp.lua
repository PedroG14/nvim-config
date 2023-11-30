return {
    {
        'hrsh7th/nvim-cmp',
        lazy = true,
        dependencies = {
            'lukas-reineke/cmp-under-comparator',
            'onsails/lspkind.nvim'
        },
        config = function()
            local cmp = require('cmp')

            local luasnip = require('luasnip')
            local lspkind = require('lspkind')

            local filetype = cmp.setup.filetype
            local cmdline = cmp.setup.cmdline

            local opts = {
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-k>'] = cmp.mapping.select_prev_item(),
                    ['<C-j>'] = cmp.mapping.select_next_item(),
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = false })
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' }
                }),
                sorting = {
                    comparators = {
                        cmp.config.compare.offset,
                        cmp.config.compare.exact,
                        cmp.config.compare.score,
                        require('cmp-under-comparator').under,
                        cmp.config.compare.kind,
                        cmp.config.compare.sort_text,
                        cmp.config.compare.length,
                        cmp.config.compare.order
                    }
                },
                formatting = {
                    format = lspkind.cmp_format({
                        mode = 'symbol_text',
                        menu = ({
                            buffer = '[Buffer]',
                            nvim_lsp = '[LSP]',
                            luasnip = '[LuaSnip]',
                            nvim_lua = '[Lua]',
                            latex_symbols = '[LaTeX]'
                        })
                    })
                }
            }

            cmp.setup(opts)

            filetype('gitcommit', {
                sources = cmp.config.sources({
                    { name = 'buffer' }
                })
            })

            cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' },
                    { name = 'cmdline' }
                })
            })

            cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })
        end
    },

    {
        'hrsh7th/cmp-nvim-lsp',
        event = { 'BufNewFile', 'BufReadPre', 'InsertEnter' },
        dependencies = {
            'hrsh7th/nvim-cmp',
            'neovim/nvim-lspconfig'
        },
        config = function()
            local lspconfig = require('lspconfig')
            local mason_lspconfig = require('mason-lspconfig')

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local handlers = {
                function(server_name)
                    lspconfig[server_name].setup({
                        capabilities = capabilities
                    })
                end
            }

            mason_lspconfig.setup_handlers(handlers)
        end
    },

    {
        'hrsh7th/cmp-buffer',
        event = 'InsertEnter',
        dependencies = 'hrsh7th/nvim-cmp'
    },

    {
        'hrsh7th/cmp-path',
        event = { 'InsertEnter', 'CmdlineEnter' },
        dependencies = 'hrsh7th/nvim-cmp'
    },

    {
        'hrsh7th/cmp-cmdline',
        event = 'CmdlineEnter',
        dependencies = 'hrsh7th/nvim-cmp',
    },

    {
        'saadparwaiz1/cmp_luasnip',
        event = 'InsertEnter',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    }
}
