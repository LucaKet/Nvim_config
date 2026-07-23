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

-- change quickly to monochrome colorscheme
vim.cmd[[
nnoremap <Leader>bb :colorscheme quiet<CR>
]]
-- back to colored
vim.cmd[[
nnoremap <Leader>nbb :colorscheme darkblue<CR>
]]
-- red colorbar at 80 character
vim.cmd[[ 
nnoremap <Leader>80 :set colorcolumn=80<CR> 
]]
-- (make it disappear)
vim.cmd[[ 
nnoremap <Leader>n80 :set colorcolumn=-80<CR> 
]]
