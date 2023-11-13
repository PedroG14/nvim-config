local M = {}

M.hl = function()
    vim.cmd('autocmd colorscheme gruvbox :hi link NavicText GruvboxBlue')
    vim.cmd('autocmd colorscheme gruvbox :hi link NavicSeparator GruvboxOrange')
end

M.config = {
    icons = {
        File = ' ',
        Module = ' ',
        Namespace = ' ',
        Package = ' ',
        Class = ' ',
        Method = ' ',
        Property = ' ',
        Field = ' ',
        Constructor = ' ',
        Enum = ' ',
        Interface = ' ',
        Function = ' ',
        Variable = ' ',
        Constant = ' ',
        String = ' ',
        Number = ' ',
        Boolean = ' ',
        Array = ' ',
        Object = ' ',
        Key = ' ',
        Null = ' ',
        EnumMember = ' ',
        Struct = ' ',
        Event = ' ',
        Operator = ' ',
        TypeParameter = ' '
    },
    lsp = {
        auto_attach = true
    },
    highlight = true,
    separator = ' -> ',
    click = true
}

return M
