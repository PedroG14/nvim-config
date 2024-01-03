----------------------
-- 󰌌 Neovim keymaps --
----------------------

-- Mapleader => <Space>
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

keymap.set({ "n", "t" }, "<C-h>", "<C-w>h", opts)
keymap.set({ "n", "t" }, "<C-j>", "<C-w>j", opts)
keymap.set({ "n", "t" }, "<C-k>", "<C-w>k", opts)
keymap.set({ "n", "t" }, "<C-l>", "<C-w>l", opts)

keymap.set("v", '>', '>gv', opts)
keymap.set("v", '<', '<gv', opts)

-- Toggle ColorColumn
keymap.set("n", "<A-c>", function()
    vim.api.nvim_set_option_value("colorcolumn",
    vim.api.nvim_get_option_value("colorcolumn", {}) ~= "80" and "80" or "",
    {})
end, vim.tbl_extend("force", opts, { desc = "Toggle ColorColumn ON/OFF" }))
