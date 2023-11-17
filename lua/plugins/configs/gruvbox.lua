local M = {}

M.set_sign_column_hl = function()
    vim.cmd('autocmd colorscheme gruvbox :hi SignColumn guibg=#282828')
end

M.config = {}

return M
