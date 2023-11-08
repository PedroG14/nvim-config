----------------
-- 󰌌 Keymaps --
----------------

-- Telescope --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})

-- Tree --
local treeapi = require('nvim-tree.api')
vim.keymap.set('n', '<leader>n', treeapi.tree.focus, {})

-- Trouble --
vim.keymap.set('n', '<leader>xx', function() require('trouble').open() end)
vim.keymap.set('n', '<leader>xw', function() require('trouble').open('workspace_diagnostics') end)
vim.keymap.set('n', '<leader>xd', function() require('trouble').open('document_diagnostics') end)
vim.keymap.set('n', '<leader>xq', function() require('trouble').open('quickfix') end)
vim.keymap.set('n', '<leader>xl', function() require('trouble').open('loclist') end)
vim.keymap.set('n', 'gR', function() require('trouble').open('lsp_references') end)
