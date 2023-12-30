----------------------
-- 󰌌 Neovim keymaps --
----------------------

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set({ "n", "t" }, "<C-h>", "<C-w>h")
keymap.set({ "n", "t" }, "<C-j>", "<C-w>j")
keymap.set({ "n", "t" }, "<C-k>", "<C-w>k")
keymap.set({ "n", "t" }, "<C-l>", "<C-w>l")

keymap.set("v", '>', '>gv')
keymap.set("v", '<', '<gv')

-- Toggle ColorColumn
keymap.set("n", "<A-c>", function()
    vim.api.nvim_set_option_value("colorcolumn",
    vim.api.nvim_get_option_value("colorcolumn", {}) ~= "80" and "80" or "",
    {})
end, vim.tbl_extend("keep", { desc = "Toggle ColorColumn ON/OFF" }, opts))
