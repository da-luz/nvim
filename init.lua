require("config.lazy")
require("config.keymaps")
require("config.settings")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

vim.lsp.config("*", {
    capabilities = capabilities
})
