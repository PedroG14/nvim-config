----------------------
-- 󰌌 Neovim keymaps --
----------------------

-- Mapleader => <Space>
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

return {
    { "n", "<c-d>", "<c-d>zz", opts },
    { "n", "<c-u>", "<c-u>zz", opts },

    { { "n", "t" }, "<c-h>", "<c-w>h", opts },
    { { "n", "t" }, "<c-j>", "<c-w>j", opts },
    { { "n", "t" }, "<c-k>", "<c-w>k", opts },
    { { "n", "t" }, "<c-l>", "<c-w>l", opts },

    { "v", ">", ">gv", opts },
    { "v", "<", "<gv", opts },

    -- Toggle ColorColumn
    {
        "n",
        "<a-c>",
        function()
            vim.api.nvim_set_option_value(
                "colorcolumn",
                vim.api.nvim_get_option_value("colorcolumn", {}) ~= "80"
                        and "80"
                    or "",
                {}
            )
        end,
        vim.tbl_extend("force", opts, { desc = "Toggle ColorColumn ON/OFF" }),
    },
}
