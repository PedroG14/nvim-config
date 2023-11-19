local M = {}

M.config = {
    options = {
        numbers = 'both',
        close_command = 'bdelete! %d | blast',
        right_mouse_command = 'bdelete! %d | blast',
        diagnostics = 'nvim_lsp',
        offsets = {
            {
                filetype = "NvimTree",
                text = function()
                    return vim.fn.getcwd()
                end,
                highlight = "Directory",
                text_align = "center"
            }
        }
    }
}

return M
