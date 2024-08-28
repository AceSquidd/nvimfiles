vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})


vim.keymap.set('n', '<leader>ee', ':Neotree filesystem reveal float toggle<CR>')

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})


-- Luasnip refresh
vim.keymap.set('n', '<Leader>L', '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})<CR>')
