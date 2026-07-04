local lsp = require("config.lsp")       -- il modulo on_attach
local cmp_lsp = require("cmp_nvim_lsp") -- per collegare l'autocomplete LSP

vim.lsp.enable('pyright', {
  on_attach = lsp.on_attach,
  capabilities = cmp_lsp.default_capabilities(),
}
)
