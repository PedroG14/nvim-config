return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = 'onsails/lspkind.nvim',
        lazy = true,
        config = function()
            local cmp = require('cmp')

            local luasnip = require('luasnip')
            local lspkind = require('lspkind')

            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0
                and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]
                :sub(col, col)
                :match('%s') == nil
            end

            local mapping = {
                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),

                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { 'i', 's' }),

                ['<CR>'] = cmp.mapping({
                    i = function(fallback)
                        if cmp.visible() and cmp.get_active_entry() then
                            cmp.confirm({
                                behavior = cmp.ConfirmBehavior.Replace,
                                select = false
                            })
                        else
                            fallback()
                        end
                    end,
                    s = cmp.mapping.confirm({ select = false }),
                    c = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = false
                    }),
                }),

                ['<C-k>'] = cmp.mapping.scroll_docs(-4),
                ['<C-j>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort()
            }

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
                mapping = mapping,
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
