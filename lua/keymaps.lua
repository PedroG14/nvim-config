---------------
-- 󰌌 Keymaps --
---------------

local keymap = vim.keymap

-- Vim --
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', '<C-d>', '<C-d>zz')

-- BufferLine --
keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>')
keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>')

-- Telescope --
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set('n', '<leader>fo', builtin.oldfiles, {})

-- Tree --
keymap.set('n', '<leader>n', '<Cmd>NvimTreeFindFileToggle<CR>', {})

-- Trouble --
local trouble = require('trouble')
keymap.set('n', '<leader>xx', function() trouble.open() end)
keymap.set('n', '<leader>xw', function() trouble.open('workspace_diagnostics') end)
keymap.set('n', '<leader>xd', function() trouble.open('document_diagnostics') end)
keymap.set('n', '<leader>xq', function() trouble.open('quickfix') end)
keymap.set('n', '<leader>xl', function() trouble.open('loclist') end)
keymap.set('n', 'gR'        , function() trouble.open('lsp_references') end)
