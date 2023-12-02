return {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
        'SmiteshP/nvim-navic',
        'nvim-tree/nvim-web-devicons'
    },
    event = { 'BufNewFile', 'BufReadPre' },
    config = function()
        local barbecue = require('barbecue')

        local gruvbox = {
            normal = { link = 'GruvboxBlue' },

            separator = { link = 'GruvboxBg4' },

            basename = { link = 'GruvboxBlueBold' },

            context_file           = { link = 'GruvboxOrange' },
            context_module         = { link = 'GruvboxOrange' },
            context_namespace      = { link = 'GruvboxOrange' },
            context_package        = { link = 'GruvboxOrange' },
            context_class          = { link = 'GruvboxOrange' },
            context_method         = { link = 'GruvboxOrange' },
            context_property       = { link = 'GruvboxOrange' },
            context_field          = { link = 'GruvboxOrange' },
            context_constructor    = { link = 'GruvboxOrange' },
            context_enum           = { link = 'GruvboxOrange' },
            context_interface      = { link = 'GruvboxOrange' },
            context_function       = { link = 'GruvboxOrange' },
            context_variable       = { link = 'GruvboxOrange' },
            context_constant       = { link = 'GruvboxOrange' },
            context_string         = { link = 'GruvboxOrange' },
            context_number         = { link = 'GruvboxOrange' },
            context_boolean        = { link = 'GruvboxOrange' },
            context_array          = { link = 'GruvboxOrange' },
            context_object         = { link = 'GruvboxOrange' },
            context_key            = { link = 'GruvboxOrange' },
            context_null           = { link = 'GruvboxOrange' },
            context_enum_member    = { link = 'GruvboxOrange' },
            context_struct         = { link = 'GruvboxOrange' },
            context_event          = { link = 'GruvboxOrange' },
            context_operator       = { link = 'GruvboxOrange' },
            context_type_parameter = { link = 'GruvboxOrange' }
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
                opts.theme = vim.g.colors_name == 'gruvbox' and gruvbox or {}
                barbecue.setup(opts)
            end
        })
    end
}
