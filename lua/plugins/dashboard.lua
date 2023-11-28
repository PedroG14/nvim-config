return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local dashboard = require('dashboard')

        local header = {
            '██████████████████████████████████████████████████\n',
            '█████ ████████████████████████████████████████\n',
            '████   ███  ████████████████  █ ███████████\n',
            '███     █     █     ██  ████ █ ███\n',
            '██  █       ██ ██    █        ██\n',
            '██  ███   █   ██ ██ █   █  █ █  ██\n',
            '███████ ██    █    ███ █  █████ ██\n',
            '██████████████████████████████████████████████████'
        }

        local center = {
            { desc = '󰈔  New File',                          desc_hl = 'GruvboxFg4', key = 'n', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'ene' },
            { desc = '󰈞  Find File',                         desc_hl = 'GruvboxFg4', key = 'f', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Telescope find_files' },
            { desc = '󱋡  Recent Files                     ', desc_hl = 'GruvboxFg4', key = 'o', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Telescope oldfiles' },
            { desc = '󱁻  Config Files',                      desc_hl = 'GruvboxFg4', key = 'c', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'e $HOME/.config/nvim' },
            { desc = '󰒲  Lazy',                              desc_hl = 'GruvboxFg4', key = 'l', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Lazy' },
            { desc = '󰏓  Mason',                             desc_hl = 'GruvboxFg4', key = 'm', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Mason' },
            { desc = '󰗼  Exit Neovim',                       desc_hl = 'GruvboxFg4', key = 'q', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'quit' }
        }

        local footer = {
            'I think we can put our differences behind us.\n',
            'For science. You monster. - GLaDOS'
        }

        local adjust_header = function()
            return string.rep('\n', math.floor((vim.fn.winheight(0) - (#header + (2 * #center) + #footer)) / 2)) .. table.concat(header) .. '\n'
        end

        local opts = {
            theme = 'doom',
            config = {
                header = vim.split(adjust_header() .. '\n', '\n'),
                center = center,
                footer = vim.split('\n' .. table.concat(footer), '\n')
            }
        }

        dashboard.setup(opts)
    end
}
