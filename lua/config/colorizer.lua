local M = {}

M.config = {
    filetypes = {
        '*',
        '!lazy',
        '!mason'
    },
    user_default_options = {
        RRGGBBAA = true,
        AARRGGBB = true,
        css = true,
        mode = 'virtualtext',
        virtualtext = '■'
    }
}

return M
