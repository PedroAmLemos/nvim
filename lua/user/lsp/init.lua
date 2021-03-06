local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
  return
end

require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require "user.lsp.settings.sumneko_lua"
require "user.lsp.settings.rust_analyzer"
require "user.lsp.settings.pyright"
require "user.lsp.settings.clangd"
require "user.lsp.settings.lemminx"
require "user.lsp.settings.hls"
require "user.lsp.settings.html"
require "user.lsp.settings.cssls"
