local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print("could not load lspconfig")
  return
end

require("stanoira.lsp.lsp-installer")
require("stanoira.lsp.handlers").setup()
require("stanoira.lsp.null-ls")
