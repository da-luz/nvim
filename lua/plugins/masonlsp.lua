return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "pyright", "jdtls", "html", "cssls", "ts_ls", "lua_ls" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
