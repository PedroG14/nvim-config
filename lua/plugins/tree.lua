local api = require('nvim-tree.api')
vim.keymap.set('n', '<leader>n', api.tree.toggle, {})
