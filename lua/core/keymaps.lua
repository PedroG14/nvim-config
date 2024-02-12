----------------------
-- 󰌌 Neovim keymaps --
----------------------

-- Mapleader => <Space>
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<c-d>", "<c-d>zz", opts)
keymap.set("n", "<c-u>", "<c-u>zz", opts)

keymap.set({ "n", "t" }, "<c-h>", "<c-w>h", opts)
keymap.set({ "n", "t" }, "<c-j>", "<c-w>j", opts)
keymap.set({ "n", "t" }, "<c-k>", "<c-w>k", opts)
keymap.set({ "n", "t" }, "<c-l>", "<c-w>l", opts)

keymap.set("v", ">", ">gv", opts)
keymap.set("v", "<", "<gv", opts)

-- Toggle ColorColumn
keymap.set("n", "<a-c>", function()
    vim.api.nvim_set_option_value(
        "colorcolumn",
        vim.api.nvim_get_option_value("colorcolumn", {}) ~= "80" and "80" or "",
        {}
    )
end, vim.tbl_extend("force", opts, { desc = "Toggle ColorColumn ON/OFF" }))
