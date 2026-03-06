vim.keymap.set("n", "-", "<cmd>Oil<CR>")

--running python files using leader-r
vim.keymap.set("n", "<leader>r", ":!python %<CR>", { desc = "Run Python file" })

vim.keymap.set("n", "<leader>ob", ":ObsidianBacklinks", { desc = "shows backlinks for current file"})

vim.cmd[[
" Expand or jump in insert mode
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

" Jump forward through tabstops in visual mode
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Jump backward through snippet tabstops with Shift-Tab 
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]
