----------------
-- 󰌌 Keymaps --
----------------

-- General --
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- BufferLine --
local bufferline = require('bufferline')
vim.keymap.set('n', '<leader>1', function() bufferline.go_to(1) end)
vim.keymap.set('n', '<leader>2', function() bufferline.go_to(2) end)
vim.keymap.set('n', '<leader>3', function() bufferline.go_to(3) end)
vim.keymap.set('n', '<leader>4', function() bufferline.go_to(4) end)
vim.keymap.set('n', '<leader>5', function() bufferline.go_to(5) end)
vim.keymap.set('n', '<leader>6', function() bufferline.go_to(6) end)
vim.keymap.set('n', '<leader>7', function() bufferline.go_to(7) end)
vim.keymap.set('n', '<leader>8', function() bufferline.go_to(8) end)
vim.keymap.set('n', '<leader>9', function() bufferline.go_to(9) end)
vim.keymap.set('n', '<leader>$', function() bufferline.go_to(-1) end)

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
