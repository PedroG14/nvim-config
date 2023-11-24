local M = {}

M.config = {
    options = {
        numbers = function(opts)
            return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
        end,
        close_command = 'bdelete! %d | blast',
        right_mouse_command = 'bdelete! %d | blast',
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
