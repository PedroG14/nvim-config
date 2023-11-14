local M = {}

M.config = {
    theme = {
        normal =                 { fg = '#83A598' },

        ellipsis =               { fg = '#7C6F64' },
        separator =              { fg = '#7C6F64' },
        modified =               { fg = '#B8BB26' },

        context_file =           { fg = '#FE8019' },
        context_module =         { fg = '#FE8019' },
        context_namespace =      { fg = '#FE8019' },
        context_package =        { fg = '#FE8019' },
        context_class =          { fg = '#FE8019' },
        context_method =         { fg = '#FE8019' },
        context_property =       { fg = '#FE8019' },
        context_field =          { fg = '#FE8019' },
        context_constructor =    { fg = '#FE8019' },
        context_enum =           { fg = '#FE8019' },
        context_interface =      { fg = '#FE8019' },
        context_function =       { fg = '#FE8019' },
        context_variable =       { fg = '#FE8019' },
        context_constant =       { fg = '#FE8019' },
        context_string =         { fg = '#FE8019' },
        context_number =         { fg = '#FE8019' },
        context_boolean =        { fg = '#FE8019' },
        context_array =          { fg = '#FE8019' },
        context_object =         { fg = '#FE8019' },
        context_key =            { fg = '#FE8019' },
        context_null =           { fg = '#FE8019' },
        context_enum_member =    { fg = '#FE8019' },
        context_struct =         { fg = '#FE8019' },
        context_event =          { fg = '#FE8019' },
        context_operator =       { fg = '#FE8019' },
        context_type_parameter = { fg = '#FE8019' }
    },
    symbols = {
        ellipsis =  '...',
        separator = '->'
    },
    kinds = {
        File =          '',
        Module =        '',
        Namespace =     '',
        Package =       '',
        Class =         '',
        Method =        '',
        Property =      '',
        Field =         '',
        Constructor =   '',
        Enum =          '',
        Interface =     '',
        Function =      '',
        Variable =      '',
        Constant =      '',
        String =        '',
        Number =        '',
        Boolean =       '',
        Array =         '',
        Object =        '',
        Key =           '',
        Null =          '',
        EnumMember =    '',
        Struct =        '',
        Event =         '',
        Operator =      '',
        TypeParameter = ''
    }
}

return M
