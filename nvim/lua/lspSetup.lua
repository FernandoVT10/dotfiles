-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig["ts_ls"].setup {}
lspconfig["gopls"].setup {}
lspconfig["marksman"].setup {}
