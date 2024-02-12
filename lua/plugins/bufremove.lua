return {
    "echasnovski/mini.bufremove",
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    keys = {
        {
            "<a-x>",
            function()
                local bufremove = require("mini.bufremove")
                if vim.bo.modified then
                    local choice = vim.fn.confirm(
                        ("Save changes to %q?"):format(vim.fn.bufname()),
                        "&Yes\n&No\n&Cancel"
                    )
                    if choice == 1 then -- Yes
                        vim.cmd.write()
                        bufremove.delete(0)
                    elseif choice == 2 then -- No
                        bufremove.delete(0, true)
                    end
                else
                    bufremove.delete(0)
                end
            end,
            desc = "Delete buffer",
        },
        {
            "<a-X>",
            function()
                local bufremove = require("mini.bufremove")
                bufremove.delete(0, true)
            end,
            desc = "Delete buffer (FORCE)",
        },
    },
    opts = {},
}
