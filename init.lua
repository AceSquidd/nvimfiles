vim.g.mapleader = " "
vim.g.maplocalleader = " "


require("config.lazy")
require("config.general")
require("config.mappings")


-- LuaSnip ref
require("luasnip.loaders.from_lua").lazy_load({paths = "./LuaSnip/"})

