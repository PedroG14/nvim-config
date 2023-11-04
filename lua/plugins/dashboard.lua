local dashboard = require('dashboard')

local header = {
	'',
	'',
	'',
	'',
	'',
	'',
	'██████████████████████████████████████████████████',
	'█████ ████████████████████████████████████████',
	'████   ███  ████████████████  █ ███████████',
	'███     █     █     ██  ████ █ ███',
	'██  █       ██ ██    █        ██',
	'██  ███   █   ██ ██ █   █  █ █  ██',
	'███████ ██    █    ███ █  █████ ██',
	'██████████████████████████████████████████████████',
	'',
	''
}

local center = {
	{ desc = '󰈔 -> New File', desc_hl = 'GruvboxFg4', key = 'n', key_hl = 'GruvboxBlue', key_format = '[%s]', action = 'ene' },
	{ desc = '󰈞 -> Find File', desc_hl = 'GruvboxFg4', key = 'f', key_hl = 'GruvboxBlue', key_format = '[%s]', action = 'Telescope find_files' },
	{ desc = '󱋡 -> Recent Files', desc_hl = 'GruvboxFg4', key = 'o', key_hl = 'GruvboxBlue', key_format = '[%s]', action = 'Telescope oldfiles' },
	{ desc = '󰒲 -> Lazy', desc_hl = 'GruvboxFg4', key = 'l', key_hl = 'GruvboxBlue', key_format = '[%s]', action = 'Lazy' },
	{ desc = '󰏓 -> Mason', desc_hl = 'GruvboxFg4', key = 'm', key_hl = 'GruvboxBlue', key_format = '[%s]', action = 'Mason' },
	{ desc = '󰗼 -> Exit Neovim', desc_hl = 'GruvboxFg4', key = 'q', key_hl = 'GruvboxBlue', key_format = '[%s]', action = 'quit' }
}

local footer = {
	'',
	'I think we can put our differences behind us.',
	'For science. You monster. - GLaDOS'
}

dashboard.setup({
	theme = 'doom',
	config = {
		header = header,
		center = center,
		footer = footer
	}
})

vim.cmd('autocmd colorscheme gruvbox :hi link DashboardHeader GruvboxBlue')
vim.cmd('autocmd colorscheme gruvbox :hi DashboardFooter guifg=#fe8019')
