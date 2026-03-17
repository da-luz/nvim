vim.opt.runtimepath:prepend(vim.fn.stdpath("data") .. "/lazy/nvim-treesitter")

require("config.filetypes")
require("config.lazy")
require("config.keymaps")
require("config.settings")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

vim.lsp.config("*", {
    capabilities = capabilities
})
