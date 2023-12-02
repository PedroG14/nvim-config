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
                diagnostics_indicator = function(_, _, diag)
                    local icons = {
                        Error = ' ',
                        Warn  = ' ',
                        Hint  = ' ',
                        Info  = ' ',
                    }
                    local ret = (diag.error and icons.Error .. diag.error .. ' ' or '')
                    .. (diag.warning and icons.Warn .. diag.warning or '')
                    return vim.trim(ret)
                end,
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = 'Nvim-Tree',
                        highlight = 'Directory',
                        text_align = 'center'
                    }
                }
            }
        }

        bufferline.setup(opts)
    end
}
