return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'MunifTanjim/nui.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    },
    cmd = 'Telescope',
    keys = {
        { '<leader>ff', '<Cmd>Telescope find_files<CR>', desc = 'Telescope Find Files' },
        { '<leader>fg', '<Cmd>Telescope live_grep<CR>', desc = 'Telescope Live Grep' },
        { '<leader>fb', '<Cmd>Telescope buffers<CR>', desc = 'Telescope Buffers' },
        { '<leader>fh', '<Cmd>Telescope help_tags<CR>', desc = 'Telescope Help Tags' },
        { '<leader>fo', '<Cmd>Telescope oldfiles<CR>', desc = 'Telescope Oldfiles' }
    },
    config = function()
        local telescope = require('telescope')
        local trouble = require('trouble')

        local opts = {
            defaults = {
                mappings = {
                    i = {
                        ['<C-h>'] = 'which_key',
                        ['<C-t>'] = trouble.open_with_trouble
                    },
                    n = {
                        ['<C-t>'] = trouble.open_with_trouble
                    }
                }
            },
            pickers = {
                find_files = {
                    follow = true,
                    hidden = true
                },
                fd = {
                    follow = true,
                    hidden = true
                }
            },
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = 'smart_case',        -- or 'ignore_case' or 'respect_case'
                }
            }
        }

        telescope.setup(opts)
        telescope.load_extension('fzf')
    end
}
