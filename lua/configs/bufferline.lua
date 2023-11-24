local M = {}

M.config = {
    options = {
        numbers = function(opts)
            return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
        end,
        separator_style = 'thin',
        close_command = 'bdelete! %d',
        right_mouse_command = 'bdelete! %d',
        diagnostics = 'nvim_lsp',
        offsets = {
            {
                filetype = 'neo-tree',
                text = 'Neo-Tree',
                highlight = 'Directory',
                text_align = 'center'
            }
        }
    }
}

return M
