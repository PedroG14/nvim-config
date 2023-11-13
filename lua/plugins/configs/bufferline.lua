return {
    options = {
        separator_style = 'thick',
        diagnostics = 'nvim_lsp',
        offsets = {
            {
                filetype = 'NvimTree',
                text = function()
                    return vim.fn.getcwd()
                end,
                highlight = 'Directory',
                separator = true
            }
        }
    }
}
