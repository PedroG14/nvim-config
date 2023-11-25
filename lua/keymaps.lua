---------------
-- 󰌌 Keymaps --
---------------

local setkeymap = vim.keymap.set

-- General --
setkeymap('n', '<C-d>', '<C-d>zz')
setkeymap('n', '<C-u>', '<C-u>zz')

setkeymap({ 'n', 't' }, '<C-h>', '<C-w>h')
setkeymap({ 'n', 't' }, '<C-j>', '<C-w>j')
setkeymap({ 'n', 't' }, '<C-k>', '<C-w>k')
setkeymap({ 'n', 't' }, '<C-l>', '<C-w>l')

--------------------
-- Plugin keymaps --
--------------------

local diagnostic = vim.diagnostic
local lspbuf = vim.lsp.buf
local trouble = require('trouble')
local builtin = require('telescope.builtin')

-- LspConfig --
setkeymap('n', '<leader>cd', diagnostic.open_float)
setkeymap('n', '[d', diagnostic.goto_prev)
setkeymap('n', ']d', diagnostic.goto_next)

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        local opts = { buffer = event.buf }
        setkeymap('n', 'K', lspbuf.hover, opts)
        setkeymap('n', 'gD', lspbuf.declaration, opts)
        setkeymap('n', 'gd', builtin.lsp_definitions, opts)
        setkeymap('n', 'gI', builtin.lsp_implementations, opts)
        setkeymap('n', 'gr', builtin.lsp_references, opts)
        setkeymap('n', 'gy', builtin.lsp_type_definitions, opts)
        setkeymap('n', 'gK', lspbuf.signature_help, opts)
        setkeymap('i', '<C-k>', lspbuf.signature_help, opts)

        setkeymap('n', '<leader>cr', lspbuf.rename, opts)
        setkeymap({ 'n', 'v' }, '<leader>ca', lspbuf.code_action, opts)
    end
})

-- BufferLine --
setkeymap('n', '[b', '<Cmd>BufferLineCyclePrev<CR>')
setkeymap('n', ']b', '<Cmd>BufferLineCycleNext<CR>')
setkeymap('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>')
setkeymap('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>')

-- Neo-Tree --
setkeymap('n', '<leader>n', '<Cmd>Neotree filesystem reveal toggle<CR>')

-- Telescope --
setkeymap('n', '<leader>ff', builtin.find_files)
setkeymap('n', '<leader>fg', builtin.live_grep)
setkeymap('n', '<leader>fb', builtin.buffers)
setkeymap('n', '<leader>fh', builtin.help_tags)
setkeymap('n', '<leader>fo', builtin.oldfiles)

-- Trouble --
setkeymap('n', '<leader>xx', trouble.toggle)
setkeymap('n', '<leader>xw', function() trouble.toggle('workspace_diagnostics') end)
setkeymap('n', '<leader>xd', function() trouble.toggle('document_diagnostics') end)
setkeymap('n', '<leader>xq', function() trouble.toggle('quickfix') end)
setkeymap('n', '<leader>xl', function() trouble.toggle('loclist') end)
setkeymap('n', 'gR', function() trouble.toggle('lsp_references') end)
