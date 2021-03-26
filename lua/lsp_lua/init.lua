-- Your custom attach function for nvim-lspconfig goes here.
local on_attach = function(client, bufnr)
end

-- Enable Lua LSP
require('nlua.lsp.nvim').setup(require('lspconfig'), { on_attach = on_attach })
