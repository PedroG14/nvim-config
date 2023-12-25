----------------------
-- 󰌌 Neovim keymaps --
----------------------

local keymap = function (mode, lhs, rhs, opts)
    local options = { silent = true }
    options = vim.tbl_extend("force", options, opts or {})
    vim.keymap.set(mode, lhs, rhs, options)
end

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap({ "n", "t" }, "<C-h>", "<C-w>h")
keymap({ "n", "t" }, "<C-j>", "<C-w>j")
keymap({ "n", "t" }, "<C-k>", "<C-w>k")
keymap({ "n", "t" }, "<C-l>", "<C-w>l")

keymap("v", '>', '>gv')
keymap("v", '<', '<gv')

-- Toggle ColorColumn
keymap("n", "<A-c>", function()
    vim.api.nvim_set_option_value("colorcolumn",
    vim.api.nvim_get_option_value("colorcolumn", {}) ~= "80" and "80" or "",
    {})
end, { desc = "Toggle ColorColumn ON/OFF" })
