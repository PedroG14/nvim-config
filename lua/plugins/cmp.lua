return {
    'hrsh7th/nvim-cmp',
    version = false,
    event = { 'InsertEnter', 'CmdlineEnter' },
    dependencies = {
        {
            'hrsh7th/cmp-nvim-lsp',
            dependencies = 'neovim/nvim-lspconfig'
        },
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'lukas-reineke/cmp-under-comparator',
        {
            'saadparwaiz1/cmp_luasnip',
            dependencies = {
                'L3MON4D3/LuaSnip'
            }
        },
        'onsails/lspkind.nvim'
    },
    config = function()
        local cmp = require('cmp')
        local filetype = cmp.setup.filetype
        local cmdline = cmp.setup.cmdline

        local luasnip = require('luasnip')
        local lspkind = require('lspkind')

        local has_words_before = function()
            unpack = unpack or table.unpack
            local line,col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
        end

        local mapping = cmp.mapping.preset.insert({
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
                        cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                    else
                        fallback()
                    end
                end,
                s = cmp.mapping.confirm({ select = false }),
                c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
            })
        })

        local opts = {
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },
            window = {},
            mapping = mapping,
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }
            },
            {
                { name = 'buffer' }
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
                { name = 'git' }
            },
            {
                { name = 'buffer' }
            })
        })

        cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = 'path' }
            },
            {
                { name = 'cmdline' }
            })
        })

        cmdline({ '/', '?' }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' }
            }
        })

        require("luasnip.loaders.from_vscode").lazy_load()
    end
}
