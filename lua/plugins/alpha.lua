local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
	'██████████████████████████████████████████████████',
	'█████ ████████████████████████████████████████',
	'████   ███  ████████████████  █ ███████████',
	'███     █     █     ██  ████ █ ███',
	'██  █       ██ ██    █        ██',
	'██  ███   █   ██ ██ █   █  █ █  ██',
	'███████ ██    █    ███ █  █████ ██',
	'██████████████████████████████████████████████████'
}

dashboard.section.buttons.val = {
	dashboard.button('n', '󰈔 -> New File', ':ene <BAR> startinsert <CR>'),
	dashboard.button('f', '󰈞 -> Find File', ':Telescope find_files <CR>'),
	dashboard.button('o', '󱋡 -> Recent Files', ':Telescope oldfiles <CR>'),
	dashboard.button('l', '󰒲 -> Lazy', ':Lazy <CR>'),
	dashboard.button('m', '󰏓 -> Mason', ':Mason <CR>'),
	dashboard.button('q', '󰗼 -> Exit Neovim', ':quit <CR>')
}

dashboard.section.footer.val = {
	'',
	'I think we can put our differences behind us.',
	'For science. You monster. - GLaDOS'
}

---------------
-- Highlight --
---------------

-- Header
local dashboardHeader = {}
for i = 1, #(dashboard.section.header.val) do
	table.insert(dashboardHeader, {{'GruvboxBlue', 0, -1}})
end
dashboard.section.header.opts.hl = dashboardHeader

-- Buttons
for _, button in ipairs(dashboard.section.buttons.val) do
	button.opts.hl = 'GruvboxFg4'
	button.opts.hl_shortcut = 'GruvboxBlue'
	button.opts.width = 46
end

-- Footer
local dashboardFooter = {}
for i = 1, #(dashboard.section.footer.val) do
	table.insert(dashboardFooter, {{'GruvboxOrange', 0, -1}})
end
dashboard.section.footer.opts.hl = dashboardFooter

alpha.setup(dashboard.config)
