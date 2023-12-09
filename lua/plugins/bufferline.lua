return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'echasnovski/mini.bufremove',
    },
    event = { 'BufNewFile', 'BufReadPre' },
    keys = {
        { '<S-h>', function()
            require('bufferline').cycle(-1)
        end, desc = 'Open previous buffer (BufferLine)' },
        { '<S-l>', function()
            require('bufferline').cycle(1)
        end, desc = 'Open next buffer (BufferLine)' },

        { '<A-1>', function()
            require('bufferline').go_to(1, true)
        end, desc = 'Open buffer #1 (BufferLine)' },
        { '<A-2>', function()
            require('bufferline').go_to(2, true)
        end, desc = 'Open buffer #2 (BufferLine)' },
        { '<A-3>', function()
            require('bufferline').go_to(3, true)
        end, desc = 'Open buffer #3 (BufferLine)' },
        { '<A-4>', function()
            require('bufferline').go_to(4, true)
        end, desc = 'Open buffer #4 (BufferLine)' },
        { '<A-5>', function()
            require('bufferline').go_to(5, true)
        end, desc = 'Open buffer #5 (BufferLine)' },
        { '<A-6>', function()
            require('bufferline').go_to(6, true)
        end, desc = 'Open buffer #6 (BufferLine)' },
        { '<A-7>', function()
            require('bufferline').go_to(7, true)
        end, desc = 'Open buffer #7 (BufferLine)' },
        { '<A-8>', function()
            require('bufferline').go_to(8, true)
        end, desc = 'Open buffer #8 (BufferLine)' },
        { '<A-9>', function()
            require('bufferline').go_to(9, true)
        end, desc = 'Open buffer #9 (BufferLine)' },
        { '<A-0>', function()
            require('bufferline').go_to(-1, true)
        end, desc = 'Open last buffer (BufferLine)' }
    },
    config = function()
        local bufferline = require('bufferline')
        local bufremove = require('mini.bufremove')

        local opts = {
            options = {
                numbers = function(opts)
                    return string.format('%s·%s',
                        opts.raise(opts.id),
                        opts.lower(opts.ordinal))
                end,
                separator_style = 'thin',
                close_command = function(n)
                    bufremove.delete(n, false)
                end,
                right_mouse_command = function(n)
                    bufremove.delete(n, false)
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
                        highlight = vim.g.colors_name == 'gruvbox'
                            and 'GruvboxBLOffset' or 'Directory',
                        text_align = 'center'
                    }
                }
            }
        }

        bufferline.setup(opts)
    end
}
