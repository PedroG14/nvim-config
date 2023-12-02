return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'echasnovski/mini.bufremove',
    },
    event = { 'BufNewFile', 'BufReadPre' },
    keys = {
        { '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Open previous buffer (BufferLine)' },
        { '<S-l>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Open next buffer (BufferLine)' }
    },
    config = function()
        local bufferline = require('bufferline')

        local opts = {
            options = {
                numbers = function(opts)
                    return string.format('%s·%s',
                    opts.raise(opts.id),
                    opts.lower(opts.ordinal))
                end,
                separator_style = 'thin',
                close_command = function(n)
                    require('mini.bufremove').delete(n, false)
                end,
                right_mouse_command = function(n)
                    require('mini.bufremove').delete(n, false)
                end,
                always_show_bufferline = false,
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

        bufferline.setup(opts)
    end
}
