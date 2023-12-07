----------------------
-- 󰌌 Neovim keymaps --
----------------------

local setkeymap = vim.keymap.set

setkeymap('n', '<C-d>', '<C-d>zz')
setkeymap('n', '<C-u>', '<C-u>zz')

setkeymap({ 'n', 't' }, '<C-h>', '<C-w>h')
setkeymap({ 'n', 't' }, '<C-j>', '<C-w>j')
setkeymap({ 'n', 't' }, '<C-k>', '<C-w>k')
setkeymap({ 'n', 't' }, '<C-l>', '<C-w>l')

setkeymap('n', '[b', '<Cmd>bprev<CR>')
setkeymap('n', ']b', '<Cmd>bnext<CR>')

-- Toggle ColorColumn
setkeymap('n', '<A-c>', function()
    vim.api.nvim_set_option_value('colorcolumn',
    vim.api.nvim_get_option_value('colorcolumn', {})
    ~= '80' and '80' or '',
    {})
end, { desc = 'Toggle ColorColumn (ON/OFF)' })
