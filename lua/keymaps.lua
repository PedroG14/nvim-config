---------------
-- 󰌌 Keymaps --
---------------

local keymap = vim.keymap

-- Vim --
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', '<C-d>', '<C-d>zz')

-- Telescope --
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>f', builtin.find_files, {})
keymap.set('n', '<leader>g', builtin.live_grep, {})
keymap.set('n', '<leader>b', builtin.buffers, {})
keymap.set('n', '<leader>h', builtin.help_tags, {})
keymap.set('n', '<leader>o', builtin.oldfiles, {})

-- Tree --
local treeapi = require('nvim-tree.api')
keymap.set('n', '<leader>n', function() treeapi.tree.toggle({ find_file = true }) end, {})

-- Trouble --
local trouble = require('trouble')
keymap.set('n', '<leader>xx', function() trouble.open() end)
keymap.set('n', '<leader>xw', function() trouble.open('workspace_diagnostics') end)
keymap.set('n', '<leader>xd', function() trouble.open('document_diagnostics') end)
keymap.set('n', '<leader>xq', function() trouble.open('quickfix') end)
keymap.set('n', '<leader>xl', function() trouble.open('loclist') end)
keymap.set('n', 'gR'        , function() trouble.open('lsp_references') end)
