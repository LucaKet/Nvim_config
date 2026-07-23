vim.keymap.set("n", "-", "<cmd>Oil<CR>")

vim.cmd[[
" Expand or jump in insert mode
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

" Jump forward through tabstops in visual mode
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Jump backward through snippet tabstops with Shift-Tab 
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

vim.cmd[[ 
nnoremap <Leader>80 :set colorcolumn=80<CR> 
]]
vim.cmd[[ 
nnoremap <Leader>n80 :set colorcolumn=-80<CR> 
]]
