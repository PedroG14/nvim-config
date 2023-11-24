local M = {}

M.snippets = function()
    require("luasnip.loaders.from_vscode").lazy_load()
end

return M
