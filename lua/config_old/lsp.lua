local M = {}
M.on_attach = function(client, bufnr)
    local opts = { noremap=true, silent=true, buffer=bufnr }
    -- Vai alla definizione
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    -- Hover 
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- Riferimenti
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    -- Rinominare variabile/funzione
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
end

return M
