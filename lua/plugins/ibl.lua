return {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = { 'BufNewFile', 'BufReadPre' },
    config = function()
        local ibl = require('ibl')

        ibl.setup()

        ibl.overwrite({
            exclude = {
                filetypes = { 'dashboard' }
            }
        })
    end
}
