local handlers = require "user.lsp.handlers"
local lspconfig = require("lspconfig")


lspconfig["lemminx"].setup ({
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
})
