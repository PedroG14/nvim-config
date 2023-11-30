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

-- LspConfig --
setkeymap('n', '<leader>cd', diagnostic.open_float)
setkeymap('n', '[d', diagnostic.goto_prev)
setkeymap('n', ']d', diagnostic.goto_next)

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        local opts = { buffer = event.buf }
        setkeymap('n', 'K', lspbuf.hover, opts)
        setkeymap('n', 'gD', lspbuf.declaration, opts)
        setkeymap('n', 'gd', '<Cmd>Telescope lsp_definitions<CR>', opts)
        setkeymap('n', 'gI', '<Cmd>Telescope lsp_implementations<CR>', opts)
        setkeymap('n', 'gr', '<Cmd>Telescope lsp_references<CR>', opts)
        setkeymap('n', 'gy', '<Cmd>Telescope lsp_type_definitions<CR>', opts)
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

-- Bufremove --
setkeymap('n', '<leader>bd', function()
    require('mini.bufremove').delete(0, false)
end)

setkeymap('n', '<leader>bD', function()
    require('mini.bufremove').delete(0, true)
end)

-- Neo-Tree --
setkeymap('n', '<leader>n', '<Cmd>Neotree toggle reveal<CR>')

-- Telescope --
setkeymap('n', '<leader>ff', '<Cmd>Telescope find_files<CR>')
setkeymap('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>')
setkeymap('n', '<leader>fb', '<Cmd>Telescope buffers<CR>')
setkeymap('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>')
setkeymap('n', '<leader>fo', '<Cmd>Telescope oldfiles<CR>')

-- Trouble --
setkeymap('n', '<leader>xx', '<Cmd>TroubleToggle<CR>')
setkeymap('n', '<leader>xw', '<Cmd>TroubleToggle workspace_diagnostics<CR>')
setkeymap('n', '<leader>xd', '<Cmd>TroubleToggle document_diagnostics<CR>')
setkeymap('n', '<leader>xq', '<Cmd>TroubleToggle quickfix<CR>')
setkeymap('n', '<leader>xl', '<Cmd>TroubleToggle loclist<CR>')
setkeymap('n', 'gR', '<Cmd>TroubleToggle lsp_references<CR>')
