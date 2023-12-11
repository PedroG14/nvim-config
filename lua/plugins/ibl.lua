return {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = { 'BufNewFile', 'BufReadPre' },
    config = function()
        local ibl = require('ibl')

        local opts = {}

        ibl.setup(opts)

        ibl.overwrite({
            exclude = {
                filetypes = { 'dashboard' },
            },
        })
    end,
}
