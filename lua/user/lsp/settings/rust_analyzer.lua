local handlers = require "user.lsp.handlers"
-- local lspconfig = require("lspconfig")

require("rust-tools").setup {
  tools = {
    hover_with_actions = true,
    inlay_hints = {
      -- prefix for parameter hints
      parameter_hints_prefix = " ",
      -- prefix for all the other hints (type, chaining)
      other_hints_prefix = " ",
    },
  },

  server = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
    settings = {
      ["rust-analyzer"] = {
        -- cargo = { loadOutDirsFromCheck = true },
        -- procMacro = { enable = true },
        -- hoverActions = { references = true },
      },
    },
  },
}
