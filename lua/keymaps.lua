---------------
-- 󰌌 Keymaps --
---------------

local keymap = vim.keymap

-- Vim --
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', '<C-d>', '<C-d>zz')

-- BufferLine --
keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>')
keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>')
keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>')
keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>')
keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>')
keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>')
keymap.set('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>')
keymap.set('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>')
keymap.set('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>')
keymap.set('n', '<leader>$', '<Cmd>BufferLineGoToBuffer -1<CR>')

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
