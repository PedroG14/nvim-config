local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

local M = {}

M.cmp_event = function()
    -- If you want insert `(` after select function or method item
    cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done() )
end

M.config = {}

return M
