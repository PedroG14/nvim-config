local header = [[
██████████████████████████████████████████████████
█████ ████████████████████████████████████████
████   ███  ████████████████  █ ███████████
███     █     █     ██  ████ █ ███
██  █       ██ ██    █        ██
██  ███   █   ██ ██ █   █  █ █  ██
███████ ██    █    ███ █  █████ ██
██████████████████████████████████████████████████
]]

local center = {
    { desc = '󰈔 -> New File', 	  desc_hl = 'GruvboxFg4', key = 'n', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'ene' },
    { desc = '󰈞 -> Find File', 	  desc_hl = 'GruvboxFg4', key = 'f', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Telescope find_files' },
    { desc = '󱋡 -> Recent Files                    ', desc_hl = 'GruvboxFg4', key = 'o', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Telescope oldfiles' },
    { desc = '󰒲 -> Lazy', 		  desc_hl = 'GruvboxFg4', key = 'l', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Lazy' },
    { desc = '󰏓 -> Mason', 		  desc_hl = 'GruvboxFg4', key = 'm', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'Mason' },
    { desc = '󰗼 -> Exit Neovim',  desc_hl = 'GruvboxFg4', key = 'q', key_hl = 'DashboardShortCut', key_format = '[%s]', action = 'quit' }
}

local footer = [[
I think we can put our differences behind us.
For science. You monster. - GLaDOS
]]

local function adjusted_header()
    local function count(str) return select(2, string.gsub(str, '\n', '\n')) end
    return string.rep('\n', math.floor((vim.fn.winheight(0) - (count(header) + (2 * #center) + count(footer))) / 2)) .. header .. '\n'
end

local M = {}

M.config = {
    theme = 'doom',
    config = {
        header = vim.split(adjusted_header(), '\n'),
        center = center,
        footer = vim.split('\n' .. footer, '\n')
    }
}

return M
