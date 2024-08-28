local personal_sections = {

	lualine_c = { { 'datetime', style = 'iso',padding = 1} , { 'datetime', style = '%H:%M', padding =0} },
	lualine_a = { { 'mode', on_click = function() require('lualine').refresh() end} },
	lualine_b = {'filename'},

	lualine_z = {'progress','location'},
	lualine_y = {'fileformat', 'filetype'},
	lualine_x = {},
}

local personal_options = {
	refresh = { statusline = 1000},
}



return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons"},
	config = function ()
		require('lualine').setup{
		sections = personal_sections,
		options = personal_options,
		}
	end
}
