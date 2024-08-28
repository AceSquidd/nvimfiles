return {
	{
	'williamboman/mason.nvim',
	config = function()
		require('mason').setup({
				PATH = "prepend"
			})
	end
	},
	{
	'williamboman/mason-lspconfig.nvim',
	config = function()
		require('mason-lspconfig').setup({
			ensure_installed = { "lua_ls", -- Lua LS
					     --"ltex", -- LaTex LS
					   }
			})
	end
	},
	{
	'neovim/nvim-lspconfig',
	config = function()
		local lspc = require("lspconfig")
		lspc.lua_ls.setup({})
	--	lspc.ltex.setup({})
	end
	}

}
