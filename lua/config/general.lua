-- Yes, we're just executing a bunch of Vimscript, but this is the officially
-- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps
vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]


-- Clipboard:

vim.opt.clipboard = 'unnamedplus'

-- Tab
vim.opt.tabstop = 6
vim.opt.shiftwidth = 6
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true


-- UI numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 5
vim.opt.signcolumn = 'yes'

-- UI split
vim.opt.splitbelow = true
vim.opt.splitright = true
-- UI others
vim.opt.showmode = false
vim.opt.scrolloff = 8
-- UI colors
vim.opt.background = "dark"
vim.opt.termguicolors = true

-- Spellang
vim.opt.spelllang = "en_us"

--MouseUtils
vim.opt.mouse = "nv"

--NoSwap
vim.opt.swapfile = false

-- Builtins handle:
local disable_builtins = {
      "netrw",
      "netrwPlugin",
      "netrwSettings",
      "newtrFileHandlers",
      "gzip",

}

for _ , plugin in pairs(disable_builtins) do
      vim.g["loaded_" .. plugin] = 1
end

-- Enable title 
vim.opt.title = true
vim.opt.startofline = false

--LuaSnip configs
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
