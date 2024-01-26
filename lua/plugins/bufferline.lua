return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "echasnovski/mini.bufremove",
    },
    event = {
        "BufNewFile",
        "BufWritePre",
        "BufReadPost",
    },
    keys = function()
        local bufferline = require("bufferline")
        local keymap = {
            {
                "<S-h>",
                function()
                    bufferline.cycle(-1)
                end,
                desc = "Open previous buffer (BufferLine)",
            },
            {
                "<S-l>",
                function()
                    bufferline.cycle(1)
                end,
                desc = "Open next buffer (BufferLine)",
            },
            {
                "<A-0>",
                function()
                    bufferline.go_to(-1, true)
                end,
                desc = "Go to last buffer",
            },
        }
        for i = 1, 9 do
            table.insert(keymap, {
                "<A-" .. i .. ">",
                function()
                    bufferline.go_to(i, true)
                end,
                desc = "Go to buffer #" .. i,
            })
        end
        return keymap
    end,
    opts = function()
        local bufremove = require("mini.bufremove")
        return {
            options = {
                separator_style = {},
                indicator = { style = "none" },
                numbers = function(opts)
                    return string.format(
                        "%s·%s",
                        opts.raise(opts.id),
                        opts.lower(opts.ordinal)
                    )
                end,
                close_command = function(n)
                    bufremove.delete(n, false)
                end,
                right_mouse_command = function(n)
                    bufremove.delete(n, false)
                end,
                always_show_bufferline = false,
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(_, _, diag)
                    local icons = require("core.utils").diagnostic_icons
                    local ret = (
                        diag.error and icons.Error .. diag.error .. " "
                        or ""
                    )
                        .. (diag.warning and icons.Warn .. diag.warning or "")
                    return vim.trim(ret)
                end,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Neo-Tree",
                        highlight = "Directory",
                        text_align = "center",
                        -- separator = "│",
                    },
                },
            },
        }
    end,
}
