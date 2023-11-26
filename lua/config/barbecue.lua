local M = {}

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

M.set_hl = function()
    vim.api.nvim_create_autocmd('ColorScheme', {
        callback = function()
            M.config['theme'] = vim.g.colors_name == 'gruvbox' and gruvbox or {}
            require('barbecue').setup(M.config)
        end
    })
end

M.config = {
    symbols = {
        ellipsis = '...',
        separator = '->'
    }
}

return M
