---------------
-- 󰌌 Keymaps --
---------------

-- Telescope --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
vim.keymap.set('n', '<leader>o', builtin.oldfiles, {})

-- Tree --
local treeapi = require('nvim-tree.api')
vim.keymap.set('n', '<leader>n', treeapi.tree.focus, {})

-- Trouble --
local trouble = require('trouble')
vim.keymap.set('n', '<leader>xx', function() trouble.open() end)
vim.keymap.set('n', '<leader>xw', function() trouble.open('workspace_diagnostics') end)
vim.keymap.set('n', '<leader>xd', function() trouble.open('document_diagnostics') end)
vim.keymap.set('n', '<leader>xq', function() trouble.open('quickfix') end)
vim.keymap.set('n', '<leader>xl', function() trouble.open('loclist') end)
vim.keymap.set('n', 'gR'        , function() trouble.open('lsp_references') end)
