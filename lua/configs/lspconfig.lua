local signs = { Error = ' ', Warn = ' ', Hint = '󰌶 ', Info = ' ' }

local M = {}

M.sign_define = function()
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
end

return M
