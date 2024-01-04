return {
    "tpope/vim-fugitive",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost"
    },
    keys = {
        { "<leader>G", function()
            local function getFugitiveWin()
                for _, win in ipairs(vim.api.nvim_list_wins()) do
                    if pcall(vim.api.nvim_win_get_var, win, "fugitive_status") then
                        return win
                    end
                end
            end
            local win = getFugitiveWin()
            if win then
                vim.api.nvim_win_close(win, true)
            else
                vim.cmd[[
                vertical belowright Git
                ]]
            end
        end, desc = "Fugitive Toggle" }
    },
    config = function()
    end
}
