return {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    event = { 'BufNewFile', 'BufReadPre' },
    dependencies = {
        {
            'SmiteshP/nvim-navic',
            dependencies = {
                'neovim/nvim-lspconfig'
            }
        },
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local barbecue = require('barbecue')

        local gruvbox = {
            normal = { fg = '#83A598' },

            separator = { fg = '#7C6F64' },

            basename = { fg = '#83A598', bold = true },

            context_file           = { fg = '#FE8019' },
            context_module         = { fg = '#FE8019' },
            context_namespace      = { fg = '#FE8019' },
            context_package        = { fg = '#FE8019' },
            context_class          = { fg = '#FE8019' },
            context_method         = { fg = '#FE8019' },
            context_property       = { fg = '#FE8019' },
            context_field          = { fg = '#FE8019' },
            context_constructor    = { fg = '#FE8019' },
            context_enum           = { fg = '#FE8019' },
            context_interface      = { fg = '#FE8019' },
            context_function       = { fg = '#FE8019' },
            context_variable       = { fg = '#FE8019' },
            context_constant       = { fg = '#FE8019' },
            context_string         = { fg = '#FE8019' },
            context_number         = { fg = '#FE8019' },
            context_boolean        = { fg = '#FE8019' },
            context_array          = { fg = '#FE8019' },
            context_object         = { fg = '#FE8019' },
            context_key            = { fg = '#FE8019' },
            context_null           = { fg = '#FE8019' },
            context_enum_member    = { fg = '#FE8019' },
            context_struct         = { fg = '#FE8019' },
            context_event          = { fg = '#FE8019' },
            context_operator       = { fg = '#FE8019' },
            context_type_parameter = { fg = '#FE8019' }
        }

        local opts = {
            symbols = {
                ellipsis = '...',
                separator = ''
            }
        }

        barbecue.setup(opts)

        vim.api.nvim_create_autocmd({ 'BufEnter', 'ColorScheme' }, {
            callback = function()
                opts['theme'] = vim.g.colors_name == 'gruvbox' and gruvbox or {}
                barbecue.setup(opts)
            end
        })
    end
}
