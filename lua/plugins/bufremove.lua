return {
    "echasnovski/mini.bufremove",
    event = { "BufNewFile", "BufReadPre" },
    keys = {
        { "<leader>bd", function()
            if vim.bo.modified then
                local choice = vim.fn.confirm(("Save changes to %q?")
                :format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
                if choice == 1 then -- Yes
                    vim.cmd.write()
                    require("mini.bufremove").delete(0)
                elseif choice == 2 then -- No
                    require("mini.bufremove").delete(0, true)
                end
            else
                require("mini.bufremove").delete(0)
            end
        end, desc = "Delete buffer" },
        { "<leader>bD", function()
            require("mini.bufremove").delete(0, true)
        end, desc = "Delete buffer (FORCE)" }
    },
    opts = {}
}
