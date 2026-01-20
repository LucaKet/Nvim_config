local lspconfig = require("lspconfig")
local lsp = require("config.lsp")       -- il modulo on_attach
local cmp_lsp = require("cmp_nvim_lsp") -- per collegare l'autocomplete LSP

lspconfig.pyright.setup{
    on_attach = lsp.on_attach,
    capabilities = cmp_lsp.default_capabilities(),
}
